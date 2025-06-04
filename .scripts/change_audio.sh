#!/bin/bash

# Use pactl to list sinks and format the output for tofi
# We want to show the profile part of the sink identifier
selected_sink_line=$(pactl list sinks short | awk '{
    # Split the second field by dots
    split($2, parts, ".")
    # Get the last part (the profile)
    profile = parts[length(parts)]
    # Print the profile and the index in parentheses
    print profile " (" $1 ")"
}' | tofi --prompt "Select Audio Output:")

# Check if a sink was selected (tofi returns non-zero on cancel)
if [ -z "$selected_sink_line" ]; then
    echo "No sink selected. Exiting."
    exit 0
fi

# Extract the sink identifier (the original full name) from the selected line
# We need the full identifier to use with pactl commands later
# We can get the original identifier by looking up the index from the selected line
selected_index=$(echo "$selected_sink_line" | sed 's/.*(//; s/)//')

# Find the original full sink name using the selected index
# Use awk to find the line matching the index and print the second field (the full name)
TARGET_SINK=$(pactl list sinks short | awk -v idx="$selected_index" '$1 == idx {print $2; exit}')

# Verify that the selected sink actually exists
if [ -z "$TARGET_SINK" ]; then
    echo "Error: Could not find the full sink identifier for index '$selected_index'."
    exit 1
fi

echo "Moving all playback streams to '$TARGET_SINK'..."
pactl list sink-inputs short | while read -r stream; do
    stream_index=$(echo "$stream" | awk '{print $1}')
    # Check if the sink-input index is a number before moving
    if [[ "$stream_index" =~ ^[0-9]+$ ]]; then
        pactl move-sink-input "$stream_index" "$TARGET_SINK"
    fi
done

echo "Setting '$TARGET_SINK' as the default sink..."
# Use the extracted full identifier to set the default sink
pactl set-default-sink "$TARGET_SINK"

echo "Audio output switched to '$TARGET_SINK'."


ANALOG_SINK=$(pactl list sinks short | grep "analog-stereo" | awk '{print $2}' | head -1)

if [ -z "$ANALOG_SINK" ]; then
    exit 1
fi

selected_port_line=$(pactl list sinks | grep -A 100 "Name: $ANALOG_SINK" | grep -A 10 "Ports:" | grep -E "^\s+[a-z-]+:" | awk '{
    port_name = $1
    gsub(/:/, "", port_name)
    desc = ""
    for(i=2; i<=NF; i++) {
        if(i==2) desc = $i
        else desc = desc " " $i
    }
    print desc " (" port_name ")"
}' | tofi --prompt "Select Audio Port")

if [ -z "$selected_port_line" ]; then
    exit 0
fi

selected_port=$(echo "$selected_port_line" | sed 's/.*(//; s/)//')

if [ -z "$selected_port" ]; then
    exit 1
fi

pactl set-sink-port "$ANALOG_SINK" "$selected_port"

if [ $? -eq 0 ]; then
    echo "switched"
else
    echo "could nto switch"
    exit 1
fi

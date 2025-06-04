#!/bin/bash

process_list=$(ps -eo comm | grep -v "$$" | sort -u)

selected_process=$(echo "$process_list" | tofi --prompt "Select process to kill:")

if [ -z "$selected_process" ]; then
    echo "No process selected. Exiting."
    exit 0
fi

echo "Attempting to kill process named: $selected_process"

pids_to_kill=$(ps -eo pid,comm | grep -w "$selected_process$" | awk '{print $1}')

if [ -z "$pids_to_kill" ]; then
    echo "No running processes found with the name '$selected_process'."
    exit 1
fi

echo "Killing PIDs: $pids_to_kill"
kill -9 $pids_to_kill

echo "Kill command sent for processes named '$selected_process'."


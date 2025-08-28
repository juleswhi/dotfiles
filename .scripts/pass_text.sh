#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <program>"
    exit 1
fi

PROGRAM="$1"

INPUT=$(zenity --entry --title="Input Required" --text="Enter text:" 2>/dev/null)

if [ -n "$INPUT" ]; then
    "$PROGRAM" "$INPUT"
fi

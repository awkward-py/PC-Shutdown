#!/bin/bash
# This script will shut down the PC after a specified time interval
# Usage: ./shutdown.sh <minutes>

# Check if the user has provided a valid argument
if [ $# -eq 0 ] || ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Please enter a positive integer as an argument."
    exit 1
fi

# Convert the argument from minutes to seconds
seconds=$(( $1 * 60 ))

# Display a message to the user
echo "Your PC will shut down in $1 minutes."

# Wait for the specified time
sleep $seconds

# Shut down the PC
shutdown -h now

#!/bin/bash

# File to store the counter
COUNTER_FILE="/tmp/my_counter.txt"

# Initialize the file if it doesn't exist

if [ ! -f "$COUNTER_FILE" ]; then
  echo 0 > "$COUNTER_FILE"
fi

# Read the current value
INT=$(cat "$COUNTER_FILE")

# Increment the value
SUM=$((INT + 1))

# Save it back to the file
echo "$SUM" > "$COUNTER_FILE"

# Show the result
echo "sum: $SUM"

# Stop recursion if sum is 50
if [ "$SUM" -ge 999 ]; then
  echo "Reached 999. Stopping..."
  exit 0
fi

# Call the script again (WARNING: this creates recursion!)
# bash /home/fahad/devOps_documents/shell_command/echo.sh

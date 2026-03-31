#!/bin/bash
# Script 4: Log File Analyzer
# Author: Soumya Ghosh | Course: OSS
# Reg No: 24MIM10093

LOGFILE=${1:-"/var/log/syslog"}
KEYWORD=${2:-"mysql"}
COUNT=0

echo "=========================================="
echo "      FOSS Log Analysis Report"
echo "=========================================="
echo "Analyzing File: $LOGFILE"
echo "Searching for : $KEYWORD"
echo "------------------------------------------"

if [ ! -f "$LOGFILE" ]; then
    echo "Error: Log file $LOGFILE not found."
    echo "Tip: Try /var/log/bootstrap.log or /var/log/dpkg.log"
    exit 1
fi

# While-read loop to process the file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Found $COUNT occurrences of '$KEYWORD'."
echo "------------------------------------------"

# Do-while style retry logic if nothing is found
if [ $COUNT -eq 0 ]; then
    echo "No matches. Displaying last 5 lines of the file for context:"
    tail -n 5 "$LOGFILE"
else
    echo "Most recent matches:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 3
fi

#!/bin/bash
# Script 1: System Identity Report
LOGFILE="test.log"
KEYWORD="error"
COUNT=0
echo "Analyzing file: $LOGFILE"
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"
echo "Keyword '$KEYWORD' found $COUNT times."

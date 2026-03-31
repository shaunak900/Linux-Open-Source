#!/bin/bash

LOGFILE="/var/log/dpkg.log"
KEYWORD="python"

if [ -f "$LOGFILE" ]; then
    echo "Scanning $LOGFILE for '$KEYWORD'..."
    COUNT=$(grep -ic "$KEYWORD" "$LOGFILE")
    echo "Matches found: $COUNT"
    echo "Recent activity:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

else
    echo "Log file not found: $LOGFILE"
    echo "Switching to fallback mode..."

    # Windows (Git Bash) fallback
    if command -v py &> /dev/null; then
        echo "Python detected:"
        py --version
        COUNT=1
    else
        COUNT=0
    fi

    echo "Matches found: $COUNT"
    echo "Recent activity (command history):"
    history | grep -i "$KEYWORD" | tail -n 5
fi
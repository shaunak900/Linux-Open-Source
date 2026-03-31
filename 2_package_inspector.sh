#!/bin/bash

PACKAGE=${1:-"python"}

if command -v $PACKAGE &> /dev/null; then
  echo "SUCCESS: $PACKAGE is installed."
  $PACKAGE --version

elif [[ "$PACKAGE" =~ ^[Pp]ython$ ]] && command -v py &> /dev/null; then
  echo "SUCCESS: Python is installed (via py launcher)."
  py --version

else
  echo "NOTICE: $PACKAGE is NOT installed."
fi

echo "--- FOSS Philosophy Note ---"

case $PACKAGE in
 python3|python|Python) echo "Python: A community-driven language fueling the AI revolution." ;;
 *) echo "$PACKAGE: A piece of the open-source puzzle." ;;
esac
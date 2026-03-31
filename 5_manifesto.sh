#!/bin/bash
echo "--- Manifesto Generator ---"
read -p "Favorite Tool: " TOOL
read -p "Freedom means: " FREEDOM
echo "I use $TOOL because $FREEDOM is vital." > manifesto.txt
echo "Manifesto saved to manifesto.txt"
cat manifesto.txt

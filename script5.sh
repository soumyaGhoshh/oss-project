#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Soumya Ghosh
# Reg No: 24MIM10093

echo "--- Personal FOSS Manifesto Generator ---"
echo "Please answer the following questions:"
echo ""

read -p "1. Which FOSS tool do you use most? (e.g. MySQL, Linux): " TOOL
read -p "2. What is the most important freedom to you? (e.g. Modify, Share): " FREEDOM
read -p "3. What would you like to build and give back? " PROJECT

DATE_STAMP=$(date '+%d %B %Y')
FILENAME="manifesto_$(whoami).txt"

# Generating the content
{
    echo "=========================================="
    echo "     MY OPEN SOURCE MANIFESTO"
    echo "     Created on: $DATE_STAMP"
    echo "=========================================="
    echo ""
    echo "As a developer, I recognize the power of community-driven software."
    echo "My favorite tool in this journey has been $TOOL."
    echo ""
    echo "To me, Open Source represents the freedom to $FREEDOM."
    echo "Knowledge should not be locked behind proprietary gates."
    echo ""
    echo "I pledge to contribute back by building $PROJECT"
    echo "and sharing it freely under a FOSS license (like GPL or MIT)."
    echo ""
    echo "Signed,"
    echo "$(whoami)"
} > "$FILENAME"

echo ""
echo "Success! Your manifesto has been saved to: $FILENAME"
echo "------------------------------------------"
cat "$FILENAME"

#!/bin/bash
# Script 1: System Identity Report
echo "================================"
echo " Open Source Manifesto Generator"
echo " Student: ROHITH RAJ R S"
echo " Roll No: 24MEI10069"
echo "================================"
echo ""
echo "Answer the following questions:"
echo ""
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. Name something you would build and share: " BUILD
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"
echo ""
echo "Generating your manifesto..."
echo ""
echo "On $DATE, I believe in open source because it represents $FREEDOM." > $OUTPUT
echo "Using tools like $TOOL, I learn and grow every day." >> $OUTPUT
echo "In the future, I will build $BUILD and share it freely with others." >> $OUTPUT
echo "--------------------------------"
echo " Manifesto saved to $OUTPUT"
echo "--------------------------------"
cat $OUTPUT

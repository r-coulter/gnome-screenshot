#!/bin/bash
date=$(date '+%Y-%m-%d')
time=$(date '+%H:%M:%S')
filePath="${HOME}/Pictures/Screenshots/${date}"
fileName="Screenshot from ${time}.png"
fullPath="$filePath/$fileName"

echo $fullPath

mkdir -p "$filePath"
gnome-screenshot -a -f "$fullPath"
xclip -sel clip < /dev/null
xclip -selection clip -t image/png "$fullPath"
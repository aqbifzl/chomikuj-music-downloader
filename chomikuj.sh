#!/bin/sh
[ -z "$1" ] && echo "No url" && exit;
curl -s "$1" | grep "fileActionsButtons clear visibleButtons  fileIdContainer" | awk -F 'rel="' '{print $2}' | awk -F '"' '{print $1}' | xargs -I{} wget "https://chomikuj.pl/Audio.ashx?id={}&type=2&tp=mp3" -O "{}.mp3"

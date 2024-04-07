#!/bin/sh
[ -z "$1" ] && echo "No url" && exit;
curl -s "$1" | grep "expanderHeader downloadAction downloadContext.*\.mp3(audio)" | while read songData; do
  fileIdContainer=$(echo $songData | grep -o "[0-9]*\.mp3(audio)" | sed 's/.mp3(audio)//')
  title=$(echo $songData | awk -F 'title="' '{print $2}' | awk -F '"' '{print $1}' | sed 's/ /\ /g')
  wget "https://chomikuj.pl/Audio.ashx?id=$fileIdContainer&type=2&tp=mp3" -O "$title.mp3"
done

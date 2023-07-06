# chomikuj-music-downloader
Simple bash script to download music files from chomikuj.pl folder. The script also downloads files larger than 1MB (the ones you have to pay, in theory)

## Usage
```
git clone https://github.com/aqbifzl/chomikuj-music-downloader.git chomikuj && cd chomikuj
sh chomikuj.sh https://link-to-chomikuj-folder
```
> **Warning**
> Remember that the script saves files in the current location, be careful not to clutter your folder


## Inline usage
```
curl -s "LINK" | grep "fileActionsButtons clear visibleButtons  fileIdContainer" | awk -F 'rel="' '{print $2}' | awk -F '"' '{print $1}' | xargs -I{} wget "https://chomikuj.pl/Audio.ashx?id={}&type=2&tp=mp3" -O "{}.mp3"
```
>  Only change this first curl LINK

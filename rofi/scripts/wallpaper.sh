#!/bin/bash

WALL_DIR="$HOME/Pictures/Wallpapers"

SELECTED=$(
find "$WALL_DIR" -type f | while read -r file; do
    [[ "$file" =~ \.(jpg|jpeg|png|webp|gif|mp4|mkv|webm|JPG|JPEG|PNG|WEBP|GIF|MP4|MKV|WEBM)$ ]] || continue

    REL_PATH="${file#$WALL_DIR/}"
    printf "%s\0icon\x1f%s\n" "$REL_PATH" "$file"
done | rofi \
    -dmenu \
    -i \
    -show-icons \
    -theme ~/.config/rofi/themes/wallpaper.rasi \
    -p ""
)

[ -z "$SELECTED" ] && exit 0

FILE="$WALL_DIR/$SELECTED"
EXT="${FILE##*.}"
EXT="${EXT,,}"

case "$EXT" in
    gif|mp4|mkv|webm)
        pkill -x mpvpaper 2>/dev/null
        mpvpaper -o "--loop --mute" "*" "$FILE" &
        ;;

    *)
        pkill -x mpvpaper 2>/dev/null

        # Change image wallpaper
        awww img "$FILE"
        ;;
esac
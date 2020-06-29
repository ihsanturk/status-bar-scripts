#!/bin/sh

LANG=sh
COLOR=#40AAD3
TITLE=SH
PUP=${HOME}/go/bin/pup
URL="https://github.com/trending/${LANG}?since=daily"
dir=/Volumes/SDB/personal/.trends/github/$LANG
file=$dir/$(date +%s).html
mkdir -p "$dir"

curl -s "$URL" > "$file"

echo "$TITLE | color=$COLOR"
echo ---
$PUP 'article > h1 > a attr{href}' < "$file" | cut -c2- | head |
	sed 's/\(.*\)/\1 | href=https:\/\/github.com\/\1/g' | sed 's/\// \/ /'
echo ---
echo "↻ Refresh | terminal=false refresh=true"

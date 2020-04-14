#!/bin/sh

LANG=rust
URL="https://github.com/trending/${LANG}?since=daily"
dir=${HOME}/.trends/github/$LANG/
file=${HOME}/.trends/github/$LANG/`date +%s`.html
mkdir -p $dir

# TODO 1586826413: Make repos clickable. See: eksi sozluk script.
curl -s $URL > $file

echo "$LANG trends | color=#D8A787"
echo ---
cat $file | pup 'article > h1 > a attr{href}' |
	cut -c2- | head |
	sed 's/\(.*\)/\1 | href=https:\/\/github.com\/\1/g'
echo ---
echo "↻ Refresh| terminal=false refresh=true"

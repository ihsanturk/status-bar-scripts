#!/bin/sh

LANG=rust
COLOR=#D8A787
LOGO='iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABOUlEQVR4AYTMAecUQRjH8QfAvYR9C3WXpCtpk6TdPYlWOoSIO0S5UpLewIDRu1jsCwh0kAEQCEBBADQYAL++fx7+Z1n35WPGM4+xaV+aKzUCErJLCKhtrs/N1QoRBZpREFHZaZ+aZYUBckfsIfQQvkFuwOUnH5prEcJvvMfC54L8vvC3vxCiGb1rr9co0Bmj7+8gFNT2tr0RIPTQGTuMkAv2ur2ZoCn8wUeXIYwQegjJ9u2tDGFpxCn3D0d8h9wPjJDL9qq7kyGsjPw+57nvLCFke9ndTRDeGHHK/cQaW8j9muwke9HdCxAyNIX13BuCbbv7NQo04za+QhMFtRk96x5ECD2EhU26mE12opn3dPOwwgC5Iw5YuYPP5AZUdtqTzaMKEQWaURBR2VyPN02NgITsEgL+DyM7AwBIx19/QAPbbQAAAABJRU5ErkJggg=='
PUP=${HOME}/go/bin/pup
URL="https://github.com/trending/${LANG}?since=daily"
dir=${HOME}/.trends/github/$LANG/
file=${HOME}/.trends/github/$LANG/$(date +%s).html
mkdir -p "$dir"

curl -s "$URL" > "$file"

echo "| color=$COLOR templateImage=$LOGO"
echo ---
$PUP 'article > h1 > a attr{href}' < "$file" | cut -c2- | head |
	sed 's/\(.*\)/\1 | href=https:\/\/github.com\/\1/g' | sed 's/\// \/ /'
echo ---
echo "↻ Refresh | terminal=false refresh=true"

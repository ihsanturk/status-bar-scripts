#!/bin/sh

PATH=/Users/ihsan/go/bin:/Users/ihsan/.nix-profile/bin:$PATH

# Eksi
echo "$(/usr/local/bin/trends -eRl10 |
	tr '[:upper:]' '[:lower:]'|head -1) | color=#90BD58"
echo ---
/usr/local/bin/trends -euRl10 | tr '[:upper:]' '[:lower:]'
echo '---'
echo "↻ Refresh| terminal=false refresh=true"

# Google
# echo "`/usr/local/bin/trends -l1 -ntr|tr '[:upper:]' '[:lower:]'|sed 's/$/ | color=yellow/g'`"

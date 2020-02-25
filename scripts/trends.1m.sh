#!/bin/sh

# Eksi
eksitrendtext=`/usr/local/bin/trends -el1 | tr '[:upper:]' '[:lower:]'`
echo "$eksitrendtext | color=#90BD58"

# Google
# echo "`/usr/local/bin/trends -l1 -ntr|tr '[:upper:]' '[:lower:]'|sed 's/$/ | color=yellow/g'`"

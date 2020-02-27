#!/bin/sh

# Eksi
echo "`/usr/local/bin/trends -el10|tr '[:upper:]' '[:lower:]'|head -1` | color=#90BD58"
echo ---
/usr/local/bin/trends -el10|tr '[:upper:]' '[:lower:]'|tail -n +2

# Google
# echo "`/usr/local/bin/trends -l1 -ntr|tr '[:upper:]' '[:lower:]'|sed 's/$/ | color=yellow/g'`"

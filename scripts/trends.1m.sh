#!/bin/sh
echo "`/usr/local/bin/trends -erl1|tr '[:upper:]' '[:lower:]'|sed 's/$/ | color=#90BD58/g'`"
# echo "`/usr/local/bin/trends -l1 -ntr|tr '[:upper:]' '[:lower:]'|sed 's/$/ | color=yellow/g'`"

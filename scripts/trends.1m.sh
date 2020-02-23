#!/bin/sh
echo "`/usr/local/bin/trends -erl2|tr '[:upper:]' '[:lower:]'|sed 's/$/ | color=#90BD58/g'`"
echo "`/usr/local/bin/trends -l2 -ntr|tr '[:upper:]' '[:lower:]'|sed 's/$/ | color=yellow/g'`"

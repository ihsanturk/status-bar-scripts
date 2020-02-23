#!/bin/sh
eksiresult=`/usr/local/bin/trends -erl1|tr '[:upper:]' '[:lower:]'`
googleresult=`/usr/local/bin/trends -l1 -ntr|tr '[:upper:]' '[:lower:]'`
echo "$eksiresult | color=#90BD58"
echo "$googleresult | color=yellow"

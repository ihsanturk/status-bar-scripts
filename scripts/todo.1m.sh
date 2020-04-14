#!/bin/sh

echo todo
echo ---
~/.local/bin/todo -C | cut -d' ' -f2-
echo '---'
echo "↻ Refresh| terminal=false refresh=true"

#!/bin/sh

~/.local/bin/todo | sed 's/- \[.\]//g' | grep -o '[A-z0-9/ ]' | tr -d '\n'

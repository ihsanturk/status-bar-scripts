#!/bin/sh
ifconfig en2 | grep 'inet ' | cut -d' ' -f2

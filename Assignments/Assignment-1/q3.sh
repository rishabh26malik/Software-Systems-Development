#!/bin/bash
HISTFILE=~/.bash_history
set -o history
history 10 | sed 's/  */ /g' | awk '{print $2}' | sort | uniq -c | sed -e 's/^[[:space:]]*//' | awk '{print $2 " " $1}' 

#!/bin/bash
mkdir Assignment1
cd Assignment1
touch lab{1..5}.txt
find . -name "*.txt" -exec sh -c 'f="{}"; mv -- "$f" "${f%.txt}.c"' \;
ls -l | sed 's/  */ /g' | sort -n -k 5
find ~ -maxdepth 2 -type d,f -ls | sed 's/  */ /g' | awk '{print $11}'
find $(pwd) -name "*.txt" -type f

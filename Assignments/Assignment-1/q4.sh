#!/bin/bash
read str
echo $str | sed 's/[()]/ /g' | xargs | awk '{print "(" $0 ")"}' 
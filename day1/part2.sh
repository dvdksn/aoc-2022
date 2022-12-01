#!/bin/sh
awk ' 
BEGIN { RS = ""; FS = "\n" }
{ sum = 0
  for (i = 1; i <= NF; i++) sum = sum + $i
  print sum
}' input.txt | sort -n | tail -3 | awk '{ total+=$1 } END { print total }'

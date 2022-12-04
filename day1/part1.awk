BEGIN { RS = ""; FS = "\n"; max = 0 }
{ sum = 0
  for (i = 1; i <= NF; i++) sum = sum + $i
  if (sum > max) max = sum
}

END { print max }

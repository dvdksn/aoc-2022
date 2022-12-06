BEGIN { FS = "[-,]" }

{ 
  overlaps = 0
  for (i = $1; i <= $2; i++) {
    if (overlaps == 1) { break }
    for (j = $3; j <= $4; j++) {
      if (i == j) { overlaps = 1; break }
    }
  }
  count += overlaps
}
END { print count }

BEGIN { FS = "[-,]" }
($1 >= $3 && $2 <= $4) || ($1 <= $3 && $2 >= $4) { count += 1; }
END { print count }

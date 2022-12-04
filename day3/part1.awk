BEGIN {
  scores = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
}

{
  half = length($0) / 2
  first = substr($0, 1, half)
  second = substr($0, half+1)
  split(first, runes, "")
  for (r in runes) {
    if (index(second, runes[r]) >= 1) {
      sum += index(scores, runes[r])
      break
    }
  }
}

END { print sum }

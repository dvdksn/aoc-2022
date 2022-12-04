BEGIN {
  scores = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
}

{
  first = $0
  getline; second = $0
  getline; third = $0
  split(first, runes, "")
  for (r in runes) {
    if (index(second, runes[r]) && index(third, runes[r])) {
      sum += index(scores, runes[r])
      break
    }
  }
}

END { print sum }

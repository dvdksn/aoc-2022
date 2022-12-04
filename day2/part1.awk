BEGIN {
  rock = 1; paper = 2; scissor = 3;
  lose = 0; draw = 3; win = 6;
  r["A","X"] = rock + draw
  r["A","Y"] = paper + win
  r["A","Z"] = scissor + lose
  r["B","X"] = rock + lose
  r["B","Y"] = paper + draw
  r["B","Z"] = scissor + win
  r["C","X"] = rock + win
  r["C","Y"] = paper + lose
  r["C","Z"] = scissor + draw
}

{ score += r[$1,$2] }

END { print score }

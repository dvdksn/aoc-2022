BEGIN {
  rock = 1; paper = 2; scissor = 3;
  lose = 0; draw = 3; win = 6;
  r["A","X"] = scissor + lose
  r["A","Y"] = rock + draw
  r["A","Z"] = paper + win
  r["B","X"] = rock + lose
  r["B","Y"] = paper + draw
  r["B","Z"] = scissor + win
  r["C","X"] = paper + lose
  r["C","Y"] = scissor + draw
  r["C","Z"] = rock + win
}

{ score += r[$1,$2] }

END { print score }

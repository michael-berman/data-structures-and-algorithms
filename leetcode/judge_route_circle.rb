=begin
Initially, there is a Robot at position (0, 0). Given a sequence of its
moves, judge if this robot makes a circle, which means it moves back to
the original place.

The move sequence is represented by a string. And each move is represent
by a character. The valid robot moves are R (Right), L (Left), U (Up)
and D (down). The output should be true or false representing whether
the robot makes a circle.

=end

def judge_circle(moves)

  count_hash = Hash.new(0)

  moves.split("").each do |move|
      count_hash[move] += 1
  end

  if count_hash["U"] == count_hash["D"] && count_hash["L"] == count_hash["R"]
      return true
  else
      return false
  end

end

# Linear Space Complexity
# Linear Time Complexity

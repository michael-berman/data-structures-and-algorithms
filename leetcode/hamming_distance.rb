=begin
The Hamming distance between two integers is the number of positions at
which the corresponding bits are different.

Given two integers x and y, calculate the Hamming distance.
=end

def hamming_distance(x, y)
  (x ^ y).to_s(2).split("").count {|num| num == "1"}
end

# Constant Space Complexity
# Linear Time Complexity

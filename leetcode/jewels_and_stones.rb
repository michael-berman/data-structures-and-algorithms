=begin
You're given strings J representing the types of stones that are jewels,
and S representing the stones you have.  Each character in S is a type
of stone you have.  You want to know how many of the stones you have are
also jewels.

The letters in J are guaranteed distinct, and all characters in J and S
are letters. Letters are case sensitive, so "a" is considered a different
  type of stone from "A".
=end

def num_jewels_in_stones(j, s)
  count = 0

  (0...s.length).each do |i|
    count += 1 if j.include?(s[i])
  end

  count
end

# Constant Space Complexity
# O(n^2) Time Complexity

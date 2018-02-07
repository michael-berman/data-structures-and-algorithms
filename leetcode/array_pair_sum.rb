=begin
Given an array of 2n integers, your task is to group these integers into
n pairs of integer, say (a1, b1), (a2, b2), ..., (an, bn) which makes
sum of min(ai, bi) for all i from 1 to n as large as possible.
=end

def array_pair_sum(nums)
  sorted_nums = nums.sort_by(&:to_i)

  i = 0
  sum = 0
  while i < sorted_nums.length
    sum += sorted_nums[i]
    i += 2
  end

  sum
end

# Linear Space Complexity
# O(nlogn) Time Complexity because of quicksort ruby method

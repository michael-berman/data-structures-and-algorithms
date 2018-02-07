=begin
A self-dividing number is a number that is divisible by every digit it
contains.

For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0,
and 128 % 8 == 0.

Also, a self-dividing number is not allowed to contain the digit zero.

Given a lower and upper number bound, output a list of every possible
self dividing number, including the bounds if possible.
=end

def self_dividing_numbers(left, right)
    self_div_nums = []

    (left..right).each do |num|
        self_div_nums << num if is_self_dividing?(num)
    end

    self_div_nums
end

def is_self_dividing?(num)
    factors = num.to_s.split("").map(&:to_i)

    factors.each do |i|
       return false if i == 0 || num % i != 0
    end

    true
end

# Linear Space Complexity
# O(nlogn) Time Complexity

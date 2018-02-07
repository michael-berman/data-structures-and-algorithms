=begin
Given a string, you need to reverse the order of characters in each word
within a sentence while still preserving whitespace and initial word order.
=end

def reverse_words(s)
  reversed_words = s.split(" ")

  reversed_words.map! do |word|
    word.reverse
  end

  reversed_words.join(" ")
end

# Linear Space Complexity
# Linear Time Complexity

=begin
Given a List of words, return the words that can be typed using letters
of alphabet on only one row's of American keyboard
=end

def find_words(words)
  rows = [
          ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],
          ["a", "s", "d", "f", "g", "h", "j", "k", "l"],
          ["z", "x", "c", "v", "b", "n", "m"]
         ]

  found_words = []
  words.each do |word|

    if rows[0].include?(word[0].downcase)
      selected_row = 0
    elsif rows[1].include?(word[0].downcase)
      selected_row = 1
    else
      selected_row = 2
    end

    only_row_chars = true
    word.split("").each do |ch|
      only_row_chars = false if !rows[selected_row].include?(ch.downcase)
    end

    found_words << word if only_row_chars

  end

  found_words

end

# Linear Space Complexity
# O(n^2) Time Complexity

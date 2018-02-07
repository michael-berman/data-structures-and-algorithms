=begin
Given a positive integer, output its complement number. The complement
strategy is to flip the bits of its binary representation.
=end

def find_complement(num)
    bin = num.to_s(2)

    complement = ""
    (0...bin.length).each do |i|
      complement += (bin[i] == "1") ? "0" : "1"
    end

    complement.to_i(2)
end

# Linear Space Complexity
# Linear Time Complexity

# Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

# Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case

# solution 1:

def count_bits(n)
  # TODO: Program me
  binary_array = []
  while n >= 2
    reminder = n % 2
    binary_array.unshift(reminder)
    n = n / 2
  end
  binary_array.unshift(n)
  
  sum = 0
  binary_array.each do |num|
    if num == 1
      sum += 1
    end
  end

  return sum
end

# puts count_bits(1234) #5

#solution 2
def count_bits(n)
  n.to_s(2).count "1"
end

puts count_bits(1234) #5
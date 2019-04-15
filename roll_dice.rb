# 2.
# Write a method that simulates rolling two 6 sided dice and calculating the sum of the numbers
# You program should roll the dice 36,000 times
# Use an array to tally the number of times each possible sum appears
# Display the results

def dice_one()
  return rand(1..6)
end

def dice_two
  return rand(1..6)
end

def single_sum(dice_one_num, dice_two_num)
  return (dice_one_num + dice_two_num)
end

def tally_array()
  tally_array = []
  count = 1
    while count <= 36000 do
      dice_one_num = dice_one()
      dice_two_num = dice_two()
      tally_array_item = single_sum(dice_one_num, dice_two_num)
      tally_array << tally_array_item
      count += 1
    end
  return tally_array
end

tally_array = tally_array()

def find_sum(tally_array)
  answers = {}
  tally_array.each do |sum|
    answers.include?(sum)? answers[sum] += 1 : answers[sum] = 1
  end
  answers.sort.each do |key, value|
    p "#{key} : #{value}"
  end
end

find_sum(tally_array)








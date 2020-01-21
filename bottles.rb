class Bottles  
  def verse(num)
    qty_one = num == 1 ? "bottle" : "bottles"
    qty_two = num != 2 ? "bottles" : "bottle"
    phase_one = num == 1 ? "it" : "one"
    phase_two = num == 1 ? "no more" : num-1

    string_nil_qty = "No more bottles of beer on the wall, no more bottles of beer.\n" +
                     "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

    string_other_qty = "#{num} #{qty_one} of beer on the wall, #{num} #{qty_one} of beer.\n" +
                       "Take #{phase_one} down and pass it around, #{phase_two} #{qty_two} of beer on the wall.\n"

    if num == 0
      string_nil_qty
    else
      string_other_qty
    end
  end

  def verses(num1, num2)
    num_array = (num2..num1).to_a.reverse
    string_array = []
    num_array.each do |num|
      if num!= num2
        string_array << verse(num) + "\n"
      else
        string_array << verse(num)
      end
    end

    string_array.join()
  end

  def song
    verses(99, 0)
  end
end
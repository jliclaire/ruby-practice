class Bottles
  def verse(num)
    # if num == 2
    #   "2 bottles of beer on the wall, 2 bottles of beer.\n" +
    #   "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    # elsif num == 1
    #   "1 bottle of beer on the wall, 1 bottle of beer.\n" +
    #   "Take it down and pass it around, no more bottles of beer on the wall.\n"
    # elsif num == 0
    #   "No more bottles of beer on the wall, no more bottles of beer.\n" +
    #   "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    # else
    #   "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" +
    #   "Take one down and pass it around, #{num-1} bottles of beer on the wall.\n"
    # end

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

  end
end
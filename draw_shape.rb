# 1. 
# Write a ruby method that takes one paramter, rows, and draws a triangle over that many rows.
# The following would be triangle over four rows
# *
# **
# ***
# ****
# Write code to prompt the user to enter how many rows
# Add a method to draw a square and a rectangle
# Prompt the user to choose which shape and enter values required

def draw_triangle(row)
  count = 1
  while count <= row
    count.times do 
      print('*')
    end
    count += 1
    puts
  end
end

def draw_square(row)
  count = 1
  while count <= row
    row.times do 
      print('**')
    end
    count += 1
    puts
  end
end

def draw_rectangle(row, col)
  count = 1
  while count <= row
    col.times do 
      print('*')
    end
    count += 1
    puts
  end
end

def select_row()
  print "Enter row(s): "
  puts
  return gets().strip.to_i
end

def select_column()
  print "Enter column(s): "
  puts
  return gets().strip.to_i
end

def select_shape()
  print "Choose a shape: (triangle/1, square/2, rectangle/3): "
  puts
  return gets().strip
end

shape = select_shape()

def draw_shape(shape)
  if shape == "triangle" || shape == "1"
    row = select_row()
    draw_triangle(row)
    return
  elsif shape == "square" || shape == "2"
    row = select_row()
    draw_square(row)
    return
  elsif shape == "rectangle" || shape == "3"
    row = select_row()
    col = select_column()
    draw_rectangle(row, col)
    return
  else
    puts "invilid input"
  end
end

draw_shape(shape)

# use case when but not working
# def draw_shape(shape)
#   case shape
#   when "triangle" || "1"
#     row = select_row()
#     draw_triangle(row)
#     return
#   when "square" || "2"
#     row = select_row()
#     draw_square(row)
#     return
#   when "rectangle" || "3"
#     row = select_row()
#     col = select_column()
#     draw_rectangle(row, col)
#     return
#   else
#     puts "error"
#   end
# end

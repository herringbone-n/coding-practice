# require 'pry'
#inside row each_with_index, based on the index value- figure out formatting
#add dashes between arrays
board_a = [
    ['x', 'o', 'x'],
    ['x', nil, 'o'],
    ['x', 'o', nil]
  ]

def print_grid(board)
  board.each do |row|
    row.each_with_index do |mark, index|
      output = ""
      if index == 0
        if mark == 'x'
          output = " #{mark} "
        elsif mark == 'o'
          output = " #{mark} "
        else
          output = "  "
        end
        if index == 2
          output += " \n "
        end
      elsif index == 1
        if mark == 'x'
          output = "| #{mark} |"
        elsif mark == 'o'
          output = "| #{mark} |"
        else
          output = "|   |"
        end
        if index == 2
          output += "\n"
        end
      elsif index == 2
        if mark == 'x'
          output = " #{mark} "
        elsif mark == 'o'
          output = " #{mark} "
        else
          output = "  "
        end
        if index == 2
          output += "\n"
        end
      end
      print output
    end
    puts "----------"
  end
end

print_grid(board_a)

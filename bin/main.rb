#!/usr/bin/env ruby
require_relative '../lib/board.rb'

# board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

# def display_grid(board)
#   board.each do |n|
#     n.each do |j|
#       print "#{j} "
#     end
#     print "\n"
#   end
# end

puts "Welcome to tic-tac-toe game"
board = Board.new
puts "Enter Player-1 name:"
name_1 = gets.chomp
puts "Please select X or O"
color_1 = gets.chomp
color_2 = board.get_color(color_1)
puts color_2
puts "Enter Player-2 name:"
name_2 = gets.chomp


puts "#{name_1}, #{name_2}, #{color_1}"

print board.display_grid
9.times {
    puts "Player 1 select a Position"
    player1_pos = gets.chomp.to_i
  until board.valid_move?(player1_pos)
    puts "Enter a valid move"
    player1_pos = gets.chomp.to_i
  end
  puts board.display_grid(player1_pos,color_1)

puts "Player 2 select the position"
player2_pos = gets.chomp.to_i
until board.valid_move?(player2_pos)
  puts "Enter a valid move"
  player2_pos = gets.chomp.to_i
end
puts board.display_grid(player2_pos,color_2)

}
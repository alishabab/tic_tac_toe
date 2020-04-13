#!/usr/bin/env ruby

board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

def display_grid(board)
  board.each do |n|
    n.each do |j|
      print "#{j} "
    end
    print "\n"
  end
end

colors = ["X", "O"]

puts "Welcome to tic-tac-toe game"
display_grid(board)
puts "Enter Player-1 name:"
player_1 = gets.chomp
puts "Please select X or O"
color_1 = gets.chomp
colors.delete(color_1)
puts "Enter Player-2 name:"
player_2 = gets.chomp
color_2 = colors.push()


puts "#{player_1}, please input your move, your color is #{color_1}:"
puts move_1 = gets.chomp

display_grid(board)

puts "#{player_2}, please input your move, your color is #{color_2}:"
puts move_2 = gets.chomp

display_grid(board)

puts "Game Over, #{player_1} won, congratulations!"
puts "Game Over, #{player_2} won, congratulations!"
puts "Game Over, it's a tie, too bad!"

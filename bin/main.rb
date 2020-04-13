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

puts "Welcome to tic-tac-toe game"
puts "Enter Player-1 name:"
player_1 = gets.chomp
puts "Please select X or O"
color_1 = gets.chomp
puts "Enter Player-2 name:"
player_2 = gets.chomp


puts "#{player_1}, #{player_2}, #{color_1}"
display_grid(board)

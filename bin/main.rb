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

colors = %w[X O]

puts 'Welcome to tic-tac-toe game'
display_grid(board)
puts 'Enter Player-1 name:'
player1 = gets.chomp
puts 'Please select X or O'
color1 = gets.chomp
colors.delete(color1)
puts 'Enter Player-2 name:'
player2 = gets.chomp
color2 = colors.push

puts "#{player1}, please input your move, your color is #{color1}:"
move1 = gets.chomp
puts move1

display_grid(board)

puts "#{player2}, please input your move, your color is #{color2}:"
move2 = gets.chomp
puts move2

display_grid(board)

puts "Game Over, #{player1} won, congratulations!"
puts "Game Over, #{player2} won, congratulations!"
puts "Game Over, it's a tie, too bad!"

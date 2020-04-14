#!/usr/bin/env ruby

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

puts 'Welcome to tic-tac-toe game'
board = Board.new
puts 'Enter Player-1 name:'
name1 = gets.chomp
puts 'Please select X or O'
color1 = gets.chomp
color2 = board.get_color(color1)
puts color2
puts 'Enter Player-2 name:'
name2 = gets.chomp

player1 = Player.new
player2 = Player.new

print board.display_grid
loop do
  puts "#{name1} select a Position"
  player1_pos = gets.chomp.to_i
  until board.valid_move?(player1_pos)
    puts 'Enter a valid move'
    player1_pos = gets.chomp.to_i
  end
  puts board.display_grid(player1_pos, color1)
  return puts "#{name1} won!" if player1.win?(player1_pos)

  puts "#{name2} select the position"
  player2_pos = gets.chomp.to_i
  until board.valid_move?(player2_pos)
    puts 'Enter a valid move'
    player2_pos = gets.chomp.to_i
  end
  puts board.display_grid(player2_pos, color2)
  return puts "#{name2} won!" if player2.win?(player2_pos)
end

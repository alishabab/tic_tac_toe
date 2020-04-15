#!/usr/bin/env ruby

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

player1 = Player.new
player2 = Player.new
puts 'Welcome to tic-tac-toe game'
board = Board.new
puts 'Enter Player-1 name:'
name1 = gets.chomp
until player1.valid_name?(name1)
  puts 'Enter a valid name'
  name1 = gets.chomp
end
puts 'Please select X or O'
color1 = gets.chomp
until %w[O X].include?(color1)
  puts 'Enter a valid symbol'
  color1 = gets.chomp
end
color2 = board.get_color(color1)
puts 'Enter Player-2 name:'
name2 = gets.chomp
until player2.valid_name?(name2)
  puts 'Enter a valid name'
  name2 = gets.chomp
end
count = 0
print board.display_grid
loop do
  puts "#{name1} select a Position"
  player1_pos = gets.chomp.to_i
  until board.valid_move?(player1_pos)
    puts 'Enter a valid move'
    player1_pos = gets.chomp.to_i
  end
  count += 1
  puts board.display_grid(player1_pos, color1)
  return puts "#{name1} won!" if player1.wins?(player1_pos)
  return puts 'Match Draw!!' if count == 9

  puts "#{name2} select the position"
  player2_pos = gets.chomp.to_i
  until board.valid_move?(player2_pos)
    puts 'Enter a valid move'
    player2_pos = gets.chomp.to_i
  end
  count += 1
  puts board.display_grid(player2_pos, color2)
  return puts "#{name2} won!" if player2.wins?(player2_pos)
  return puts 'Match Draw!!' if count == 9
end

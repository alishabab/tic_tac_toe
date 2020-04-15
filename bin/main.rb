#!/usr/bin/env ruby

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

player1 = Player.new
player2 = Player.new
puts "Welcome to tic-tac-toe game!\n\n"
board = Board.new
puts 'Enter Player-1 name:'
name1 = gets.chomp
until player1.valid_name?(name1)
  puts 'Enter a valid name'
  name1 = gets.chomp
end
puts "\nPlease select X or O"
color1 = gets.chomp
until %w[O X].include?(color1)
  puts "\nEnter a valid symbol"
  color1 = gets.chomp
end
color2 = board.get_color(color1)
puts "\nEnter Player-2 name:"
name2 = gets.chomp
until player2.valid_name?(name2)
  puts "\nEnter a valid name"
  name2 = gets.chomp
end
puts "\nHello #{name1}, your symbol is #{color1}!"
puts "\nHello #{name2}, your symbol is #{color2}!\n\n"
count = 0
print board.display_grid + "\n"
loop do
  puts "#{name1} select a Position (#{color1})"
  player1_pos = gets.chomp.to_i
  until board.valid_move?(player1_pos)
    puts "\nEnter a valid move (#{color1})\n\n"
    print board.display_grid + "\n"
    player1_pos = gets.chomp.to_i
  end
  count += 1
  puts board.display_grid(player1_pos, color1)
  return puts "\n#{name1} won!" if player1.wins?(player1_pos)
  return puts "\nMatch Draw!!" if count == 9

  puts "#{name2} select the position (#{color2})"
  player2_pos = gets.chomp.to_i
  until board.valid_move?(player2_pos)
    puts "\nEnter a valid move (#{color2})\n\n"
    print board.display_grid + "\n"
    player2_pos = gets.chomp.to_i
  end
  count += 1
  puts board.display_grid(player2_pos, color2)
  return puts "\n#{name2} won!" if player2.wins?(player2_pos)
  return puts "\nMatch Draw!!" if count == 9
end

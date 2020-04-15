#!/usr/bin/env ruby

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

puts "Welcome to tic-tac-toe game!\n\n"
board = Board.new
puts 'Enter Player-1 name:'
name1 = gets.chomp
until /\S/.match(name1)
  puts 'Enter Valid name'
  name1 = gets.chomp
end
puts "\nPlease select X or O"
color1 = gets.chomp
until %w[O X].include?(color1)
  puts "\nEnter a valid symbol"
  color1 = gets.chomp
end
puts "\nEnter Player-2 name:"
name2 = gets.chomp
until /\S/.match(name2)
  puts 'Enter Valid name'
  name2 = gets.chomp
end
color2 = board.get_color(color1)
player1 = Player.new(name1, color1)
player2 = Player.new(name2, color2)
puts "\nHello #{name1}, your symbol is #{color1}!"
puts "\nHello #{name2}, your symbol is #{color2}!\n\n"
count = 0
print board.display_grid + "\n"
game_on = true
current_player = player1
while game_on
  puts "#{current_player.name} select a Position (#{current_player.color})"
  player_pos = gets.chomp.to_i
  until board.valid_move?(player_pos)
    puts "\nEnter a valid move (#{current_player.color})\n\n"
    print board.display_grid + "\n"
    player_pos = gets.chomp.to_i
  end
  puts board.display_grid(player_pos, current_player.color)
  if current_player.wins?(player_pos)
    game_on = false
    puts "\n#{current_player.name} won!"
    break
  end
  count += 1
  current_player = current_player == player1 ? player2 : player1
  return puts "\nMatch Draw!!" if count == 9
end

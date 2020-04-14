#!/usr/bin/env ruby

board = [[1, 4, 7], [2, 5, 8], [3, 6, 9]]

def display_grid(board)
  board.each do |n|
    n.each do |j|
      print "#{j} "
    end
    print "\n"
  end
end

game_on = true
colors = %w[X O]
puts 'Welcome to tic-tac-toe game'
display_grid(board)
puts "\nEnter Player-1 name:"
player1 = gets.chomp
puts "\nPlease select X or O"
color1 = gets.chomp
puts "\n#{player1}, your color is #{color1}"
colors.delete(color1)
puts "\nEnter Player-2 name:"
player2 = gets.chomp
color2 = colors[0]
puts "\n#{player2}, your color is #{color2}"

winner1 = false
winner2 = false
positions = { '1' => [0, 0], '2' => [1, 0], '3' => [2, 0],
              '4' => [0, 1], '5' => [1, 1], '6' => [2, 1],
              '7' => [0, 2], '8' => [1, 2], '9' => [2, 2] }

while game_on
  9.times do
    puts "\n#{player1}, please input your move (1-9):"
    move = gets.chomp
    if /[0-9]/.match(move).nil?
      puts "\nThis is not a valid input, try again"
    elsif board[positions[move][0]][positions[move][1]] == 'X' or board[positions[move][0]][positions[move][1]] == 'O'
      puts "\nThis position is already taken, try again"
    else
      board[positions[move][0]][positions[move][1]] = color1
    end
    display_grid(board)
  end
  game_on = false
  winner1 = true
end

if winner1
  puts "Game Over, #{player1} won, congratulations!"
elsif winner2
  puts "Game Over, #{player2} won, congratulations!"
else
  puts "Game Over, it's a tie, too bad!"
end

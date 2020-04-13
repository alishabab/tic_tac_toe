board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

def display_grid (board)
  board.each do |n|
    n.each do |j|
      print "#{j} "
    end
    print "\n"
  end
end

display_grid(board)

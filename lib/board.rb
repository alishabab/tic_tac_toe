class Board
  attr_accessor :arr
  def initialize(arr)
    @arr = arr
  end

  def display_grid
    @arr.each do |n|
      n.each do |j|
        print "#{j} "
      end
      print "\n"
    end
  end
end

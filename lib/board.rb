class Board
  attr_accessor :position
  def initialize
    @position = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
  
  def get_color(color)
    if color == "X"
      return "O"
    else
      return "X"
    end
  end

  def valid_move?(move)
    if @position[move-1] == "X" || @position[move-1] == "O"
      return false
    else
      return true
    end
  end

  def display_grid(move=nil,color=nil)
    if move != nil
      @position[@position.index(move)] = color
    end
    "     #{position[0]} | #{position[1]} | #{position[2]}
    ---+---+---
     #{position[3]} | #{position[4]} | #{position[5]} 
    ---+---+---
     #{position[6]} | #{position[7]} | #{position[8]}
     "
  end
end

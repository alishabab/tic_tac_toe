class Player
  attr_accessor :res_arr
  def initialize
    @res_arr = []
    @win_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                [1, 4, 7], [2, 5, 8], [3, 6, 9],
                [1, 5, 9], [3, 5, 7]]
  end

  def win?(move)
    @res_arr.push(move)
    @win_arr.include?(@res_arr)
  end
end

class Player
  attr_accessor :res_arr
  def initialize
    @res_arr = []
    @win_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                [1, 4, 7], [2, 5, 8], [3, 6, 9],
                [1, 5, 9], [3, 5, 7]]
  end

  def wins?(move)
    @res_arr.push(move)
    @result = false
    @win_arr.each do |arr|
      @result = true if @res_arr.include?(arr[0]) && @res_arr.include?(arr[1]) && @res_arr.include?(arr[2])
    end
    @result
  end

  def valid_name?(name)
    return true if /\S/.match(name)
  end
end

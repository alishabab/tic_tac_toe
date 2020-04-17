require '../lib/board.rb'
describe Board do
  board = Board.new
  describe '#get_color' do
    it "returns 'O' if 'X' is passed as argument" do
      expect(board.get_color('X')).to eql('O')
    end
    it "returns 'X' if 'O' is passed as argument" do
      expect(board.get_color('O')).to eql('X')
    end
    it 'returns error if no argument is given' do
      expect { board.get_color }.to raise_error(ArgumentError)
    end
  end

  describe '#valid_move?' do
    it 'returns true if a move is valid' do
      expect(board.valid_move?(1)).to be true
    end
    it 'returns false if a move is not valid' do
      expect(board.valid_move?(10)).to be false
    end
  end

  describe '#display_grid' do
    it 'returns the grid of string if correct position is passed' do
      expect(board.display_grid(3, 'X')).to be_instance_of(String)
    end
    it 'returns error if invalid argument is paased' do
      expect { board.display_grid(10, 'X') }.to raise_error(TypeError)
    end
  end
end

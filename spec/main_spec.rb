require '../lib/board.rb'
require '../lib/player.rb'
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
    it 'returns error if no argument is given' do
      expect { board.valid_move? }.to raise_error(ArgumentError)
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

describe Player do
  describe '#wins?' do
    player = Player.new('Murilo', 'X')
    it 'It returns false if the player doesnt win the match' do
      expect(player.wins?(1)).to be false
    end
    it 'It returns false if the player doesnt win the match' do
      expect(player.wins?(2)).to be false
    end
    it 'It returns true if player wins the match' do
      expect(player.wins?(3)).to be true
    end
    it 'returns error if no argument is passed' do
      expect { player.wins? }.to raise_error(ArgumentError)
    end
  end
end

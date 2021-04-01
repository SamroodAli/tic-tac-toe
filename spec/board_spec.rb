require 'board'

describe 'Board' do
  subject(:game_board) { Board.new }

  describe '#initialize' do
    it 'should initialize instance variable @board to array with with numbers from 1 to 9' do
      array = (1..9).to_a
      expect(game_board.board).to eq(array)
    end

    it 'should initialize instance varibale @win_sequence to an 2d array of 8 combinations' do
      expect(game_board.win_sequence.length).to eq(8)
    end

    it '@winning combinations should be the tic tac toe game winning indexes' do
      win_sequence = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [2, 4, 6],
        [0, 4, 8]
      ]
      expect(game_board.win_sequence).to eq(win_sequence)
    end
  end

  describe "#tie?" do
    it "should return true if all the slots are filled with strings" do
      tie = %w[X O X O X O X O O]
      game_board.instance_variable_set(:@board,tie)
      expect(game_board.tie?).to be true
    end
    
  end

end

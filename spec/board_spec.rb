require 'board'

describe 'Board' do
  subject(:game_board) { Board.new }
  let(:player1){double("player")}
  let(:player2){double("player")}

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

    it "should return false before game" do
      expect(game_board.tie?).to be false
    end

    it "should return true if all the slots are filled with strings" do
      tie = %w[X O X O X O X O O]
      game_board.instance_variable_set(:@board,tie)
      expect(game_board.tie?).to be true
    end
    it "should return false if there are any slots left(integers left)" do
      current_board = ["X",2,"O","X",5,6,7,8,9]
      game_board.instance_variable_set(:@board,current_board)
      expect(game_board.tie?).to be false
    end
  end

  describe "#win?" do
    it "should return false before game" do
      expect(game_board.win?).to be false
    end

    it "should return true if there is a winning combination" do
      winning_combination = [1,"X","O","O","X","O",7,"X","O"]
       game_board.instance_variable_set(:@board,winning_combination)
       expect(game_board.win?).to be true
    end

    it "should return false if there are no winning conditions" do
      no_win_sequence = %w[X O X O 5 O X 8 O]
      game_board.instance_variable_set(:@board,no_win_sequence)
      expect(game_board.win?).to be false
    end
  end

  descibe "#update_board" do
    # it "should take in "
  end

end

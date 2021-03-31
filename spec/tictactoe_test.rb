require_relative '../lib/players'
require_relative '../lib/board'

describe Player do
  it 'Create a new Player instance' do
    player = Player.new('Marko', 'X')
    expect(player.name).to eql('Marko')
    expect(player.symbol).to eql('X')
  end

  describe '#change_player' do
    let(:first_player) { Player.new('Marko', 'X') }
    let(:second_player) { Player.new('Marijan', 'O') }
    let(:current_player) { first_player }

    it 'switch player when current player is self' do
      changed = current_player.change_player(current_player, second_player)
      expect(changed).to eql(second_player)
    end

    it 'No change occure when current player is not self' do
      changed = current_player.change_player(second_player, current_player)
      expect(changed).to eql(current_player)
    end
  end
end

describe Board do
  let(:board_game) { Board.new }

  describe '#initialize' do
    it 'Create a new board' do
      expect(board_game.board).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end

  describe '#tie' do
    it 'Must return false if all elements are numeric' do
      expect(board_game.tie?).to be(false)
    end

    it 'Mast return true when all elements are string' do
      tmp_board = Board.new
      tmp_board.board = %w[X O X O X O X O X]
      expect(tmp_board.tie?).to be(true)
    end
  end

  describe '#win' do
    it 'Must return false if no combination has all the same simbol' do
      expect(board_game.win?).to be(false)
    end
    it 'Must return true if there is combination with all the same symbol' do
      board = Board.new
      board.board = %w[X O X O O O X X O]
      expect(board.win?).to be(true)
    end
  end

  describe '@update_board' do
    new_board = Board.new
    let(:first_player) { Player.new('Marko', 'X') }
    let(:second_player) { Player.new('Marijan', 'O') }
    let(:current_player) { first_player }

    it 'Must update board after player enter token position' do
      new_board.update_board(current_player, 1, first_player, second_player)
      expect(new_board.board[0]).to eql('X')
    end
  end
end

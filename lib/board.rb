class Board
  attr_accessor :board

  def initialize()
    @board = (1..9).to_a
    @win_sequence = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [2, 4, 6],
      [0, 4, 8]
    ]
  end

  def tie?
    @board.all? { |e| e.is_a?(String) }
  end

  def win?
    @win_sequence.any? do |combination|
      combination.all? { |idx| @board[idx] == 'X' } || combination.all? { |idx| @board[idx] == 'O' }
    end
  end

  def update_board(current_player, position, player1, player2)
    @board[position - 1] = current_player == player1 ? player1.symbol : player2.symbol
  end
end

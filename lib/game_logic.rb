class GameLogic
  attr_accessor :board

  def initialize(board = %w[1 2 3 4 5 6 7 8 9])
    @board = board
  end
end

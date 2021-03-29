class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def change_player(current_player, opponent)
    current_player == self ? opponent : self
  end
end

require "board"

describe "Board" do
  subject(:board) {Board.new}
  describe "#initialize" do
    it "should set instance variable @board" do
      expect(:board).instance_variable_get(:@board)
      
    end
  end

end

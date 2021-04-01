require "board"

describe "Board" do
  subject(:board) {Board.new}
  describe "#initialize" do
    it "should set instance variable @board to array with numbers from 1 to 9" do
      array = (1..9).to_a
      expect(subject.board).to eq(array)
    end

     
  end

end

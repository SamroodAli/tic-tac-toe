require 'players'

describe 'Player' do
  subject(:player1) { Player.new("Samrood","X") }
  context "when no arguments are given" do
    it "should raise argument error" do
      expect{Player.new}.to raise_error ArgumentError
    end
  end

  context "when arguments are given" do
    it "should raise not argument error" do
      expect{player1}.not_to raise_error ArgumentError
    end
  end

end

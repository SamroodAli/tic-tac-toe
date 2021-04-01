require 'players'

describe 'Player' do
  subject(:player1) { Player.new("Samrood","X") }
  let(:player2){Player.new("Marijan","O")}

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

  describe "#initialize" do
    it "should set parameter name as instance variable @name" do
      expect(player1.name).to eq("Samrood")
    end

    it "should set paramter symbol as instance variable @symbol" do
      expect(player1.symbol).to eq("X")
    end
  end

    describe "#change_player" do
      context "when no arguments are given" do
        it "should raise argument error" do
          expect{player1.change_player}.to raise_error ArgumentError
        end
      end

      context "when arguments are given" do
        it "should not raise argument error" do
          expect{player1.change_player(player1,player2)}.to_not raise_error ArgumentError
        end

        it "should return opponent if self is current player" do
          current_player  = player1
          opponent = player2
          expect(player1.change_player(current_player,opponent)).to eq(opponent)
        end

      end
    end
end

require 'rspec'
require 'player'

describe Player do
  subject(:player) { Player.new("Sean") }

  describe "#initialize" do
    it 'takes in a name' do
      expect(player.name).to eq("Sean")
    end

    it 'holds a hand' do
      expect(player.hand).to eq([])
    end

    it 'has a pot' do
      expect(player.pot).to be_a(Integer)
    end
  end

  describe "#discard_cards" do

    it 'discards cards from the player hand' do
      player.hand = [:queen, :king, :jack, :ten, :seven]
      player.discard_cards([4])
      expect(player.hand).to eq([:queen, :king, :jack, :ten])
    end
  end

end

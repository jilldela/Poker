require 'rspec'
require 'hand'

describe Hand do
  subject(:hand) { Hand.new(Deck.new) }

  describe "#initialize" do
    it "holds an array of five cards" do
      expect(hand.hand).to be_an(Array)
      expect(hand.hand.length).to eq(5)
      expect(hand.hand[0]).to be_a(Card)
    end
  end

  describe "#determine_hand" do
    it "returns the best hand value" do
      hand.hand = [Card.new(:ace, :clubs), Card.new(:ace, :hearts),
                  Card.new(:jack, :spades), Card.new(:jack, :hearts),
                  Card.new(:king, :spades)]
      expect(hand.determine_hand).to eq(:two_pair)
    end
  end




end

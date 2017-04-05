require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do

    it 'is an array of cards' do
      expect(deck.deck).to be_an(Array)
    end

    it 'has 52 cards in the deck' do
      expect(deck.deck.length).to eq(52)
    end

    it 'has four cards for every value' do
      expect(deck.deck.select { |card| card.name == :queen }.length).to eq(4)
    end

    it 'has thirteen cards for every suit' do
      expect(deck.deck.select { |card| card.suit == :hearts }.length).to eq(13)
    end
  end

  describe "#shuffle!" do
    it "shuffles the cards" do
      expect(deck.deck.dup.shuffle!).not_to eq(deck.deck)
    end
  end

  describe "#remove_card" do
    it "removes a card from the top of deck" do
      deck.remove_card
      expect(deck.deck.length).to eq(51)
    end
  end

end

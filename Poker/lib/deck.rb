require_relative 'card'

class Deck
  VALUES = [:ace, :two, :three, :four, :five, :six, :seven, :eight,
            :nine, :ten, :jack, :queen, :king]

  SUITS = [:diamonds, :clubs, :hearts, :spades]


  attr_accessor :deck

  def initialize
    @deck = populate_deck
  end

  def populate_deck
    deck = []
    SUITS.each do |suit|
      VALUES.each do |name|
        deck << Card.new(name, suit)
      end
    end
    deck
  end

  def shuffle!
    @deck.shuffle!
  end

  def remove_card
    @deck.pop
  end

end

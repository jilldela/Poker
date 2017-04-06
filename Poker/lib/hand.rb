require_relative 'deck'

class Hand
  HAND_VALUE = {high_card: 1, one_pair: 2, two_pair: 3, three_of_a_kind: 4,
                straight: 5, flush: 6, four_of_a_kind: 7, straight_flush: 8,
                royal_flush: 9}

  attr_accessor :hand, :deck

  def initialize(deck)
    @hand = populate_hand(deck)
  end

  def populate_hand(deck)
    hand = []
    deck.shuffle!
    5.times do
      hand << deck.remove_card
    end
    hand
  end

  def determine_hand
    #TODO: DO THIS LATER
  end



  private

  def royal_flush

  end

  def straight_flush

  end

  def four_of_a_kind
    four = card_name_count.select { |_, v| v.length == 4}
    :four_of_a_kind if four.length == 1
  end

  def flush
    flush = suit_count.select { |_, v| v.length == 5 }
    :flush if flush.length == 1
  end

  def straight
    str = card_name_count.keys.sort
    :straight if str.each_cons(2).all? { |x,y| y == x + 1 }
  end

  def three_of_a_kind
    triple = card_name_count.select { |_, v| v.length == 3}
    :three_of_a_kind if triple.length == 1
  end

  def two_pair
    pairs = card_name_count.select { |_, v| v.length == 2}
    :two_pair if pairs.length == 2
  end

  def one_pair
    pairs = card_name_count.select { |_, v| v.length == 2}
    :one_pair if pairs.length == 1
  end

  def card_name_count
    count = Hash.new { |h,k| h[k] = [] }
    @hand.each_with_index do |card, idx|
      count[card.name_value] << idx
    end
    count
  end

  def suit_count
    count = Hash.new { |h,k| h[k] = [] }
    @hand.each_with_index do |card, idx|
      count[card.suit] << idx
    end
    count
  end
end

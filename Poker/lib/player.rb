class Player

  attr_accessor :name, :pot, :hand

  def initialize(name)
    @name = name
    @pot = 100
    @hand = []
  end

  def prompt
    puts "Please select up to 3 cards to discard (or 'none' if you wish
    to keep your hand)."
    answer = gets.chomp
    unless answer == "none"
      indices = answer.split(",").map(&:to_i).to_a
      discard_cards(indices)
    end
  end

  def discard_cards(indices)
    @hand.reject!.with_index { |card, i| indices.include?(i) }
  end

end

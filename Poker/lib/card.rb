class Card
  VALUES = { ace: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7,
            eight: 8, nine: 9, ten: 10, jack: 11, queen: 12, king: 13 }

  SUIT = { diamonds: 1, clubs: 2, hearts: 3, spades: 4 }


  attr_reader :name, :suit, :name_value, :suit_value

  def initialize(name, suit)
    @name = name
    @name_value = VALUES[name]
    @suit = suit
    @suit_value = SUIT[suit]
  end

end

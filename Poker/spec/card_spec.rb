require 'rspec'
require 'card'

describe Card do
  subject(:card) { Card.new(:queen, :hearts) }

  describe "#initialize" do
    it 'has a name' do
      expect(card.name).to eq(:queen)
    end

    it 'has a name value' do
      expect(card.name_value).to eq(12)
    end

    it 'has a suit value' do
      expect(card.suit_value).to eq(3)
    end

    it 'has a suit' do
      expect(card.suit).to eq(:hearts)
    end
  end

end

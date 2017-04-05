require 'rspec'
require 'tower'

describe Tower do
  subject(:tower) { Tower.new }

  describe "#initialize" do
    it 'creates 3 towers' do
      expect(tower.towers.length).to eq(3)
    end

    it 'creates first tower with different size discs' do
      expect(tower.towers[0]).to eq([3, 2, 1])
    end
  end

  describe "#move" do
    before(:each) { tower.move(0,2)}

    it 'raises an error if selecting disc from empty tower' do
      expect { tower.move(1, 2) }.to raise_error(ArgumentError)
    end

    it 'raise an error if moving a larger disc onto a smaller disc' do
      # tower.move(0, 2)
      expect { tower.move(0, 2) }.to raise_error(ArgumentError)
    end

    it 'modifies the old tower' do
      # tower.move(0, 2)
      expect(tower.towers[0]).to eq([3, 2])
    end

    it 'adds the disc to the selected tower' do
      # tower.move(0, 2)
      expect(tower.towers[2]).to eq([1])
    end
  end

  describe '#won?' do
    before(:each) { tower.won? }

    it 'checks if two towers are empty' do
      expect(tower.towers[0].empty? && tower.towers[1].empty?).to be_truthy
    end

    it 'checks if the first tower is empty' do
      expect(tower.towers[0]).to be_empty
    end

    it 'checks if winning tower has sorted discs' do
      expect(tower.towers[2]).to eq([3,2,1])
    end
  end

end

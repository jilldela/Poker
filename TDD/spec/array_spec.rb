require 'rspec'
require 'array'

describe Array do

  describe '#my_uniq' do
    subject(:array) { [1, 2, 1, 3, 3] }

    it 'should take an array' do
      expect(array).to be_a(Array)
    end

    it 'should return a new array' do
      expect(array.my_uniq).not_to eq(array)
    end

    it 'should not have duplicate elements' do
      expect(array.my_uniq).to eq(array.uniq)
    end
  end

  describe "#two_sum" do
    subject(:array) { [-1, 0, 2, -2, 1] }

    it 'should take an array' do
      expect(array).to be_a(Array)
    end

    it 'should return a sorted array of subarrays' do
      expect(array.two_sum).to eq(array.two_sum.sort)
    end

    it 'indices of subarrays should equal zero' do
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end

    it 'returns a true sum of zero' do
      expect(array.two_sum).not_to include([1,1])
    end
  end

  describe '#my_tranpose' do
    subject(:array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }

    it 'should transpose the array' do
      expect(array.my_tranpose).to eq(array.transpose)
    end

    it 'should return a new array' do
      expect(array.my_tranpose).to_not eq(array)
    end
  end

  describe "#stock_picker" do
    subject(:stock) { [16, 10, 11, 9, 12, 15] }

    it 'should return the indices of the most profitable pair' do
      expect(stock.stock_picker).to eq([3, 5])
    end

    it 'the first element should be less than the second' do
      expect(stock.stock_picker[0] < stock.stock_picker[1]).to be_truthy
    end
  end

  

end

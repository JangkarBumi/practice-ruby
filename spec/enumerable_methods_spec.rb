require './lib/enumerable_methods'

describe Enumerable do
  let(:arr) { [1, 2, 3, 4, 5, 6, 7, 8] }
  describe '#my_select' do
    it 'should filter the object with the block given condition' do
      expect(arr.my_select { |i| i < 4 }).to eq([1, 2, 3])
    end
  end

  describe '#my_all?' do
    it 'should return false if any item is not a string' do
      expect(arr.my_all? { |i| i.is_a? String }).to eq(false)
    end

    it 'should return true if all item are Integers' do
      expect(arr.my_all? { |i| i.is_a? Integer }).to eq(true)
    end
  end

  describe '#my_any?' do
    it 'should return true if any item is even' do
      expect(arr.my_any?(&:even?)).to eq(true)
    end

    it 'should return false if no item is a float' do
      expect(arr.my_any? { |i| i.is_a? Float }).to eq(false)
    end
  end

  describe '#my_none?' do
    it 'should return true if none of the elements is String' do
      expect(arr.my_none? { |i| i.is_a? String }).to eq(true)
    end

    it 'should return false if none of the element is > 5' do
      expect(arr.my_none? { |i| i > 5 }).to eq(false)
    end
  end

  describe '#my_count' do
    it 'returns the number of items (8) in the array' do
      expect(arr.count).to eq(8)
    end

    it 'returns the number of elements that pass the block given condition' do
      expect(arr.count { |i| i < 5 }).to eq(4)
    end
  end

  describe '#my_map' do
    it 'returns a new array that contains each item multiplied by 2' do
      expect(arr.my_map { |i| i * 2 }).to eq([2, 4, 6, 8, 10, 12, 14, 16])
    end
  end

  describe '#my_inject' do
    it 'returns the sum of all elements in the array (36)' do
      expect(arr.my_inject { |i, x| i + x }).to eq(36)
    end
  end
end

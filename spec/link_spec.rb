# frozen_string_literal: true

require 'link'

describe Link do
  let(:list) { Link.new('a', Link.new('b', Link.new('c'))) }

  describe :to_s do
    it 'returns a string representation of that list' do
      expect(list.to_s).to eq('a - b - c')
    end
  end

  shared_examples 'is equal' do
    it 'returns true' do
      expect(list == other).to be true
    end
  end

  shared_examples 'is not equal' do
    it 'returns false' do
      expect(list == other).to be false
    end
  end

  describe :== do
    context 'given two lists of equal length' do
      context 'when lists are equal' do
        let(:other) { list.dup }

        include_examples 'is equal'
      end

      context 'when lists are unequal' do
        let(:other) { Link.new('a', Link.new('b', Link.new('cat'))) }

        include_examples 'is not equal'
      end
    end

    context 'given two lists of unequal length' do
      context 'when the other list is shorter' do
        let(:other) { Link.new('a') }

        include_examples 'is not equal'
      end

      context 'when the other list is longer' do
        let(:other) do
          Link.new('a', Link.new('b', Link.new('c', Link.new('d'))))
        end

        include_examples 'is not equal'
      end
    end
  end
end

# frozen_string_literal: true

require 'list_reverser'
require 'link'

describe ListReverser do
  describe :reverse do
    context 'given a linked list' do
      let(:original) { Link.new('a', Link.new('b', Link.new('c'))) }

      it 'reverses that linked list' do
        expected = Link.new('c', Link.new('b', Link.new('a')))

        expect(ListReverser.reverse(original)).to eq expected
      end
    end
  end
end

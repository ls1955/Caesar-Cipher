# frozen_string_literal: false

require_relative './../lib/caesar_cipher.rb'

describe '#caesar_cipher' do
  context 'given a string and a shift factor' do
    it 'modify the string according to shift factor' do
      expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end

    it 'does not modify the string if shift factor is zero' do
      expect(caesar_cipher('What a string!', 0)).to eq('What a string!')
    end

    it 'only modify letter' do
      expect(caesar_cipher('!!!@@@###$$$123', 10)).to eq('!!!@@@###$$$123')
    end
  end
end

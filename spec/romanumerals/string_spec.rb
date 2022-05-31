# frozen_string_literal: true

RSpec.describe Romanumerals::String do
  context String do
    describe '#to_int' do
      let(:examples) do
        {
          'II'                => 2,
          'XXX'               => 30,
          'LIX'               => 59,
          'CI'                => 101,
          'CDXCIX'            => 499,
          'DCCCXXXI'          => 831,
          'MMXXIII'           => 2023,
          'MMMMMMCDXLIII'     => 6443,
          'MMMMMMMMMCDLXIII'  => 9463,
          'MMMMMMMMMMMCXCVII' => 11_197
        }
      end

      it 'should return a correct integer' do
        examples.each do |roman, integer|
          expect(roman.to_int).to eq integer
        end
      end

      it 'should return Integer' do
        expect('LIX'.to_int).to be_a Integer
      end

      context 'when a string is zero' do
        it 'should not raise error' do
          expect { 0.to_int }.not_to raise_error
        end

        it 'should return the zero' do
          expect('0'.to_int).to eq 0
        end
      end

      context 'when a string is empty' do
        it 'should return the zero' do
          expect(''.to_int).to eq 0
        end
      end

      context 'when a string is not a roman' do
        it 'should return result of #to_i' do
          expect('any string'.to_int).to eq 0
          expect('any 55 strings'.to_int).to eq 0
          expect('55 any strings'.to_int).to eq 55
          expect('X VI'.to_int).to eq 0
        end
      end
    end
  end
end

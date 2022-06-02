# frozen_string_literal: true

RSpec.describe Romanumerals::Numeric do
  context Integer do
    describe '#to_roman' do
      let(:random_number) { rand(1..99_999) }
      let(:examples) do
        {
          1      => 'I',
          4      => 'IV',
          5      => 'V',
          41     => 'XLI',
          79     => 'LXXIX',
          99     => 'XCIX',
          845    => 'DCCCXLV',
          1193   => 'MCXCIII',
          1509   => 'MDIX',
          1550   => 'MDL',
          2022   => 'MMXXII',
          4218   => 'MMMMCCXVIII',
          6443   => 'MMMMMMCDXLIII',
          9463   => 'MMMMMMMMMCDLXIII',
          11_197 => 'MMMMMMMMMMMCXCVII'
        }
      end

      it 'should return a correct roman number' do
        examples.each do |number, result|
          expect(number.to_roman).to eq result
        end
      end

      it 'should return String' do
        expect(random_number.to_roman).to be_a String
      end

      context 'when a number is zero' do
        it 'should not raise error' do
          expect { 0.to_roman }.not_to raise_error
        end

        it 'should return an empty string' do
          expect(0.to_roman).to eq ''
        end
      end

      context 'when a number is negative' do
        let(:negative_number) { random_number * -1 }

        it 'should not raise error' do
          expect { negative_number.to_roman }.not_to raise_error
        end

        it 'should return an empty string' do
          expect(negative_number.to_roman).to eq ''
        end
      end
    end
  end
end

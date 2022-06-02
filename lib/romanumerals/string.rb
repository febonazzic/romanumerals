# frozen_string_literal: true

module Romanumerals
  DICTIONARY_SORTED_BY_WEIGHT = {
    'CM' => 900,
    'CD' => 400,
    'XC' => 90,
    'XL' => 40,
    'IX' => 9,
    'IV' => 4,
    'M'  => 1000,
    'D'  => 500,
    'C'  => 100,
    'L'  => 50,
    'X'  => 10,
    'V'  => 5,
    'I'  => 1
  }.freeze

  module String
    def to_numeral
      return to_i unless roman?

      decompose.map { |value, count| DICTIONARY_SORTED_BY_WEIGHT[value] * count }.sum
    end

    def to_roman
      to_i.to_roman
    end

    private

    def roman?
      match?(/^[IVXMCDL]*$/)
    end

    def decompose
      initial_string = dup

      DICTIONARY_SORTED_BY_WEIGHT.keys.each_with_object({}) do |value, result|
        matches_count = initial_string.scan(/#{value}/).size
        result[value] ||= 0

        matches_count.times do
          initial_string.sub!(/#{value}/, '')

          result[value] += 1
        end
      end
    end
  end
end

class String
  include Romanumerals::String
end

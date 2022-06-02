# frozen_string_literal: true

module Romanumerals
  module Numeric
    def to_roman
      return '' if zero?

      decompose.each_with_object([]) do |(divider, count), result|
        result << DICTIONARY[divider] * count
      end.join
    end

    private

    def decompose
      number = dup

      DICTIONARY.keys.each_with_object({}) do |divider, result|
        dividers_count = number / divider

        next unless dividers_count.positive?

        result[divider] = dividers_count

        number -= dividers_count * divider
      end
    end
  end
end

class Numeric
  include Romanumerals::Numeric
end

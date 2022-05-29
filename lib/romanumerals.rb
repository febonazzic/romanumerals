# frozen_string_literal: true

require_relative 'romanumerals/version'
require_relative 'romanumerals/numeric'

module Romanumerals
  class Error < StandardError; end

  DICTIONARY = {
    1000 => 'M',
    900  => 'CM',
    500  => 'D',
    400  => 'CD',
    100  => 'C',
    90   => 'XC',
    50   => 'L',
    40   => 'XL',
    10   => 'X',
    9    => 'IX',
    5    => 'V',
    4    => 'IV',
    1    => 'I'
  }.freeze
end

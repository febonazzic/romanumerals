![RSpec](https://github.com/febonazzic/romanumerals/actions/workflows/main.yml/badge.svg?label=build)

# Romanumerals

This gem allows you to convert arabic numbers to roman.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add romanumerals

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install romanumerals

## Usage

Usage is very simple:

```ruby
10.to_roman # => "X" 
110.to_roman # => "CX" 
99.to_roman # => "XCIX"
845.to_roman # => "DCCCXLV"
1193.to_roman # => "MCXCIII"
2022.to_roman # => "MMXXII"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/febonazzic/romanumerals.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

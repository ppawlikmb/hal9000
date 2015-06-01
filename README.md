# Hal9000

A simulation of a robot moving on a board (of default size 5x5 points).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hal9000'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hal9000

## Usage

You can create new instance of Hal9000 by running:

```ruby
hal = Hal9000.new
```

After that you can either parse a file for commands using:

```ruby
hal.parse_file('path/to/file')
```

or use commands: `place(x, y, direction)`, `left`, `right`, `move`, `report`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


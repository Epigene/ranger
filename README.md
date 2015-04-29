# Ranger

Ranger adds a single `#to_range` method to ruby strings, so you can do `"1..3".to_range` like a bauss.

## Installation

Add gem to Gemfile and bundle:

```ruby
gem 'ranger'
```

Or install it yourself as:

    $ gem install ranger

## Usage

```ruby
"1..3".to_range
  #=> 1..3 # a range object
"1...3".to_range #
  #=> 1...3
```
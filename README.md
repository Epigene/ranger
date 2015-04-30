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

As of 1.1.0 works for string form integer __and__ date ranges

```ruby
"1..3".to_range
  #=> 1..3 # a range object
"1...3".to_range #
  #=> 1...3
"01-01-2015..02-02-2015".to_range
  #=> Thu, 01 Jan 2015 00:00:00 +0000..Mon, 02 Feb 2015 23:59:59 +0000
```

### TODO
Implement string conversion as well, e.g. `"a..c".to_range #=> ["a","b","c"]`
Steal `Alph = ("a".."z").to_a`

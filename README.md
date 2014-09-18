# minitest-osx

A `minitest` reporter for the Mac OS X Notification Center.

## Installation

Add the following line to your `Gemfile`:

    gem "minitest-osx"

And execute:

    bundle

Or you can install it manually with:

    gem install minitest-osx

## Usage

Simply add `require "minitest/osx"` after `require "minitest/autorun"`.

```ruby
require "minitest/autorun"
require "minitest/osx"

describe "my amazing tests" do
  50.times do |i|
    it "must #{i}" do
      100.must_equal 100
    end
  end

  2.times do |i|
    it "compares #{i} to #{i + 1}" do
      i.must_equal i + 1
    end
  end

  it "skips things!!" do
    skip "don't care!"
  end
end
```

## Contributing

Open a pull request with your changes.

require "minitest/autorun"
require "minitest/osx"

describe 'my amazing tests' do
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

  it 'skips things!!' do
    skip "don't care!"
  end
end

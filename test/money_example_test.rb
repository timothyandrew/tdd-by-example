require_relative '../lib/money_example.rb'
require 'test/unit'

class TestMoneyExample < Test::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5)
    five.times(2)
    assert_equal(10, five.amount)
  end
end
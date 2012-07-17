require_relative '../lib/money_example.rb'
require 'test/unit'

class TestMoneyExample < Test::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5)
    product = five.times(2)
    assert_equal(10, product.amount)
    product = five.times(3)
    assert_equal(15, product.amount)
  end

  def test_equality
    assert_true  Dollar.new(5) == Dollar.new(5)
    assert_false Dollar.new(5) == Dollar.new(6)
  end
end
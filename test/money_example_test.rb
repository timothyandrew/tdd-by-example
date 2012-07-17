require_relative '../lib/money_example.rb'
require 'test/unit'

class TestMoneyExample < Test::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5)
    assert_equal(Dollar.new(10), five.times(2))
    assert_equal(Dollar.new(15), five.times(3))
  end

  def test_franc_multiplication
    five = Franc.new(5)
    assert_equal(Franc.new(10), five.times(2))
    assert_equal(Franc.new(15), five.times(3))
  end

  def test_equality
    assert_true  Dollar.new(5) == Dollar.new(5)
    assert_false Dollar.new(5) == Dollar.new(6)
  end
end

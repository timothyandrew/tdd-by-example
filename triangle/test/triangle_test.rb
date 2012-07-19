require File.join(File.dirname(__FILE__), '../lib', 'triangle')
require 'test/unit'

class TriangleTest < Test::Unit::TestCase
  def test_equilateral
    triangle = Triangle.new(5, 5, 5)
    assert_equal(triangle.type, 1)
  end

  def test_isosceles
    triangle = Triangle.new(5, 5, 6)
    assert_equal(triangle.type, 2)
  end

  def test_scalene
    triangle = Triangle.new(5, 6, 7)
    assert_equal(triangle.type, 3)
  end
end
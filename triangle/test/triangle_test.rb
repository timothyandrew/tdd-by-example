require_relative '../lib/triangle.rb'
require 'test/unit'

class TriangleTest < Test::Unit::TestCase
  def test_equilateral
    triangle = Triangle.new(5, 5, 5)
    assert_equal(triangle.type, 1)
  end
end
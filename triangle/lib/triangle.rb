class Triangle
  def initialize(*sides)
    @sides = sides
  end

  def type
    unique_sides = @sides.uniq.size
    unique_sides if unique_sides <= 3
  end
end
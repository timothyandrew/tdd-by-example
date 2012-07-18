class Triangle
  def initialize(*sides)
    @sides = sides
  end

  def type
    return 1 if @sides.uniq.size == 1
  end
end
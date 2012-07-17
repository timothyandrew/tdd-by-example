class Money
  attr_reader :amount
  protected   :amount
end

class Dollar < Money
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end

  def ==(other)
    @amount == other.amount
  end
end

class Franc < Money
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Franc.new(@amount * multiplier)
  end

  def ==(other)
    @amount == other.amount
  end
end
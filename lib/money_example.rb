class Money
  attr_reader :amount
  protected   :amount

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end

  def ==(other)
    self.class == other.class && @amount == other.amount
  end
end

class Dollar < Money
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end
end

class Franc < Money
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Franc.new(@amount * multiplier)
  end
end
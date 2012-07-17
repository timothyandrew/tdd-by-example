class Money
  attr_reader :amount, :currency
  protected   :amount

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def self.dollar(amount)
    Dollar.new(amount, "USD")
  end

  def self.franc(amount)
    Franc.new(amount, "CHF")
  end

  def ==(other)
    self.class == other.class && @amount == other.amount
  end
end

class Dollar < Money
  def initialize(amount, currency)
    super
  end

  def times(multiplier)
    Money.dollar(@amount * multiplier) 
  end
end

class Franc < Money
  def initialize(amount, currency)
    super
  end

  def times(multiplier)
    Money.franc(@amount * multiplier)
  end
end
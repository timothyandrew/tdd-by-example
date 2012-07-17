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

  def times(multiplier)
    Money.new(@amount * multiplier, @currency) 
  end

  def ==(other)
    self.currency == other.currency && @amount == other.amount
  end
end

class Dollar < Money
  def initialize(amount, currency)
    super
  end
end

class Franc < Money
  def initialize(amount, currency)
    super
  end
end
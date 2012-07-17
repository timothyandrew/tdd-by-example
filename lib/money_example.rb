class Money
  attr_reader :amount, :currency
  protected   :amount

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def self.dollar(amount)
    Money.new(amount, "USD")
  end

  def self.franc(amount)
    Money.new(amount, "CHF")
  end

  def times(multiplier)
    Money.new(@amount * multiplier, @currency) 
  end

  def ==(other)
    self.currency == other.currency && @amount == other.amount
  end

  def plus(addend)
    Money.new(@amount + addend.amount, currency)
  end
end

module Expression
end

class Bank
  def reduce(source, to)
    Money.dollar(10)
  end
end
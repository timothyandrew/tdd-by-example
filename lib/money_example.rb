class Money
  attr_reader :amount, :currency

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
    Sum.new(self, addend)
  end

  def reduce(to)
    self
  end
end

class Bank
  def reduce(source, to)
    source.reduce(to)
  end
end

class Sum
  attr_reader :augend, :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(to)
    amount = augend.amount + addend.amount
    Money.new(amount, to)
  end
end
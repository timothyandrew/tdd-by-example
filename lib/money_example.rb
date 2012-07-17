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

  def reduce(bank, to)
    rate = bank.rate(currency, to)
    return Money.new(amount/rate, to)
  end
end

class Bank
  def initialize
    @rates = {}
  end

  def add_rate(from, to, rate)
    @rates[ [from, to] ] = rate
  end

  def reduce(source, to)
    source.reduce(self, to)
  end

  def rate(from, to)
    if from == to then 1
    else @rates[ [from, to] ]
    end
  end
end

class Sum
  attr_reader :augend, :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(bank, to)
    amount = augend.amount + addend.amount
    Money.new(amount, to)
  end
end
class TestCase
  def initialize(name)
    @name = name
  end

  def run
    self.send @name
  end
end

class WasRun < TestCase
  attr_accessor :was_run

  def initialize(name)
    @was_run = nil
    super
  end

  def test_method
    @was_run = 1
  end
end
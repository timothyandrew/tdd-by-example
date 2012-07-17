class TestCase
  def initialize(name)
    @name = name
  end

  def set_up
  end

  def run
    set_up
    self.send @name
  end
end

class WasRun < TestCase
  attr_accessor :was_run, :was_set_up

  def initialize(name)
    @was_set_up = nil
    super
  end

  def test_method
    @was_run = 1
  end

  def set_up
    @was_run = nil
    @was_set_up = 1
  end
end
class TestCase
  def initialize(name)
    @name = name
  end

  def set_up
  end

  def tear_down
  end

  def run
    set_up
    self.send @name
    tear_down
  end
end

class WasRun < TestCase
  attr_accessor :was_run, :was_set_up, :log

  def initialize(name)
    @was_set_up = nil
    super
  end

  def test_method
    @was_run = 1
    @log << "test_method "
  end

  def set_up
    @was_run = nil
    @was_set_up = 1
    @log = "set_up "
  end

  def tear_down
    @log << "tear_down "
  end
end
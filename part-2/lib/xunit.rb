class TestCase
  def initialize(name)
    @name = name
  end

  def set_up
  end

  def tear_down
  end

  def run(result) 
    result.test_started
    set_up
    begin
      self.send @name
    rescue Exception => e
      result.test_failed
    end
    tear_down
    result
  end
end

class TestResult
  def initialize
    @run_count = 0
    @error_count = 0
  end

  def test_started
    @run_count += 1
  end

  def test_failed
    @error_count += 1
  end

  def summary
    "#{@run_count} run, #{@error_count} failed"    
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

  def test_broken_method
    raise "Breaking..."
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
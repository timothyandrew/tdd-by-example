require_relative '../lib/xunit.rb'

def assert(expr)
  raise "This is wrong" unless expr
end

class TestCaseTest < TestCase
  def test_running
    test = WasRun.new("test_method") 
    assert(!test.was_run)
    test.run
    assert test.was_run
  end

  def test_set_up
    test = WasRun.new("test_method")
    test.run
    assert(test.was_set_up)
  end
end

TestCaseTest.new('test_running').run
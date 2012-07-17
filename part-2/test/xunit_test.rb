require_relative '../lib/xunit.rb'

def assert(expr)
  raise "This is wrong" unless expr
end

class TestCaseTest < TestCase
  def set_up
    @test = WasRun.new("test_method")
  end

  def test_running
    @test.run
    assert(@test.was_run)
  end

  def test_set_up
    @test.run
    assert(@test.was_set_up)
  end
end

TestCaseTest.new('test_running').run
TestCaseTest.new('test_set_up').run
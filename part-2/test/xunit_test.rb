require_relative '../lib/xunit.rb'

def assert(expr)
  raise "This is wrong" unless expr
end

class TestCaseTest < TestCase
  def test_template_method
    test = WasRun.new("test_method")
    test.run
    assert(test.log == "set_up test_method tear_down ")
  end

  def test_result
    test = WasRun.new("test_method")
    result = test.run
    assert("1 run, 0 failed" == result.summary)
  end

  def test_failed_result
    test = WasRun.new("test_broken_method")
    result = test.run
    assert("1 run, 1 failed", result.summary)
  end
end

TestCaseTest.new('test_template_method').run
TestCaseTest.new('test_result').run
TestCaseTest.new('test_failed_result').run
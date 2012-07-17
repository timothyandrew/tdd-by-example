require_relative '../lib/xunit.rb'

def assert(expr)
  raise "This is wrong" unless expr
end

class TestCaseTest < TestCase
  def test_template_method
    test = WasRun.new("test_method")
    test.run
    assert(test.log == "set_up test_method ")
  end
end

TestCaseTest.new('test_template_method').run
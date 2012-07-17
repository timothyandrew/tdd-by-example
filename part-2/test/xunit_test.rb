require_relative '../lib/xunit.rb'

def assert(expr)
  raise "This is wrong" unless expr
end

class TestCaseTest < TestCase
  test = WasRun.new("test_method") 
  assert(!test.was_run)
  test.run
  assert test.was_run
end

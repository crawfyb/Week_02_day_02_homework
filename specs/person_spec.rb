
require('minitest/autorun')
require('minitest/rg')

require_relative('../person.rb')

class TestPerson < MiniTest::Test


def setup
@person = Person.new("Bob", 34)
end

def test_check_name
  assert_equal("Bob", @person.name)
end

def test_check_age
  assert_equal(34, @person.age)
end


end

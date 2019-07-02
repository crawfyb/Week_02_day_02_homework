require('minitest/autorun')
require('minitest/rg')

require_relative('../person.rb')
require_relative('../bus_stop.rb')

class TestBusStop < MiniTest::Test


def setup
@busstop = BusStop.new("City center")

@person1 = Person.new('Paul', 32)
@person2 = Person.new('Ricky', 18)
@person3 = Person.new('Emily', 20)

@people = [@person1, @person2, @person3]
end

def test_return_name_of_stop
  assert_equal("City center", @busstop.name)
end

def test_size_of_queue
  assert_equal(0, @busstop.size_of_queue)
end

def test_add_passangers_to_queue
   @busstop.add_passangers_to_queue(@person1)
   @busstop.add_passangers_to_queue(@person2)
   @busstop.add_passangers_to_queue(@person3)
   assert_equal(3, @busstop.size_of_queue)
end





end

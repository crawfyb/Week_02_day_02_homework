# frozen_string_literal: true

require('minitest/autorun')
require('minitest/rg')

require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

class TestBus < MiniTest::Test
  def setup
    @busstop = BusStop.new("City center")

    @bus_1 = Bus.new(7, 'Leith')

    @person1 = Person.new('Paul', 32)
    @person2 = Person.new('Ricky', 18)
    @person3 = Person.new('Emily', 20)

    @people = [@person1, @person2, @person3]
  end

  def test_return_route_number
    assert_equal(7, @bus_1.number)
  end

  def test_return_destination
    assert_equal('Leith', @bus_1.destination)
  end

  def test_bus_drive
    assert_equal('broom broom', @bus_1.drive)
end

  def test_number_of_passangers
    assert_equal(0, @bus_1.number_of_passangers)
  end

  def test_add_passangers
    @bus_1.add_passangers(@person1)
    assert_equal(1, @bus_1.number_of_passangers)
  end

  def test_add_passangers__multiple
    @bus_1.add_passangers(@person1)
    @bus_1.add_passangers(@person2)
    @bus_1.add_passangers(@person3)
    assert_equal(3, @bus_1.number_of_passangers)
  end

  def test_remove_passangers
    @bus_1.add_passangers(@person1)
    @bus_1.add_passangers(@person2)
    @bus_1.remove_passangers(@person1)
    assert_equal(1, @bus_1.number_of_passangers)
  end

  def test_remove_all_passangers
    @bus_1.add_passangers(@person1)
    @bus_1.add_passangers(@person2)
    @bus_1.add_passangers(@person3)
    @bus_1.remove_all_passangers()
    assert_equal(0, @bus_1.number_of_passangers)
  end

  def pick_up_from_stop
  @busstop.add_passangers_to_queue(@person1)
  @busstop.add_passangers_to_queue(@person2)
  @busstop.add_passangers_to_queue(@person3)
  @bus_1.pick_up_from_stop(@busstop)
  assert_equal(0, @busstop.size_of_queue)
  assert_equal(3, @bus_1.number_of_passangers)
end






end

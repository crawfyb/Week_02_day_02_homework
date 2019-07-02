class Bus



attr_reader :number, :destination

def initialize(number, destination)
  @number = number
  @destination = destination
  @passangers = []
end

def drive
  return "broom broom"
end

def number_of_passangers()
  return @passangers.length
end

def add_passangers(person)
  @passangers << person
end

def remove_passangers(person)
  @passangers.delete(person)
end
def remove_all_passangers()
  @passangers.clear()
end

def pick_up_from_stop(stop)
  @passangers << stop.clear
end




end

class BusStop

  attr_reader :name

  def initialize(name)
    @name = name
    @queue =[]
  end

def size_of_queue
  @queue.length
end


def add_passangers_to_queue(passangers)
  @queue << passangers
end




end

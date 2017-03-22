class Elevator

  attr_accessor :destinations, :direction, :floor

  def initialize
    @destinations = []
    @direction = "stopped"
    @floor = 0
  end

  def go_down(destinations, direction)
    if @destinations.count > 0
      puts "Go down to #{destination}."
      puts "Open door."
      @destination.reverse.pop.reverse
    else
      @direction = "stopped"
    end
  end

  def go_up(destinations)
    puts "Destinations = #{destinatios}"
    if destinations.count > 0
      puts "Go up to #{destination}."
      puts "Open door."
      destination.reverse.pop.reverse
    else
      @direction = "stopped"
    end
  end

  def open_door
    puts "Open door."
  end


end

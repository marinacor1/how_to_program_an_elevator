class Elevator

  def initialize
    @destinations = []
    @direction = "stopped"
    @floor = 0
  end

  def push_up(current_level, destination)
    @direction = "up"
    @destinations << destination
    if @floor > current_level
      go_down(destination, direction)
    elsif @floor < current_level
      go_up(destination)
    else
      open_door
    end
  end

  def push_down(current_level, destination)
    @direction = "down"
    @destinations << destination
    if @floor < current_level
      go_up(@destinations, direction)
    elsif @floor > current_level
      go_down(destination)
    else
      open_door
    end
  end

  def go_down(destinations, direction)
    if @destination.count > 0
      puts "Go down to #{destination}."
      puts "Open door."
      @destination.reverse.pop.reverse
    else
      @direction = "stopped"
    end
  end

  def go_up(destinations)
    if @destination.count > 0
      puts "Go up to #{destination}."
      puts "Open door."
      @destination.reverse.pop.reverse
    else
      @direction = "stopped"
    end
  end

  def open_door
    puts "Open door."
  end


end

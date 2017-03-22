class Elevator

  def initialize
    @destinations = []
    @direction = ["stopped"]
    @floor = 0
  end

  def push_up(current_level, destination)
    if @floor > current_level
      go_down(destination)
    elsif @floor < current_level
      go_up(destination)
    else
      open_door
    end
  end

  def push_down(current_level, destination)
    if @floor < current_level
      go_up(destination)
    elsif @floor > current_level
      go_down(destination)
    else
      open_door
    end
  end

  def go_down(destination)
    puts "Go down to #{destination}."
    puts "Open door."
  end

  def go_up(destination)
    puts "Go up to #{destination}."
    puts "Open door."
  end

  def open_door
    puts "Open door."
  end

  #at a stop one


end

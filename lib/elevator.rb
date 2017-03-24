require 'pry'
class Elevator

  attr_accessor :destinations, :direction, :floor

  def initialize
    @destinations = []
    @direction = "stopped"
    @floor = 0
  end

  def go_down(destinations)
    @direction = "down"
    @floor = destinations.last
    puts "Go down to #{@floor}."
    puts "Open door."
    destinations.reverse.delete_at(-1)
    @destinations = destinations.reverse
  end

  def go_up(destinations) #[7]
    @direction = "up"
    @destinations << destinations
    @floor = @destinations.last
    puts "Go up to #{@floor}."
    puts "Open door."
    @destinations.reverse.delete_at(-1) 
    @destinations = @destinations.reverse
  end

  def open_door
    puts "Open door."
  end


end

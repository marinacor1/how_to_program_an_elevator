require_relative 'apartment'

class Tenant

  attr_reader :resident_floor, :elevator

  def initialize(floor)
    @resident_floor = floor
    @elevator = Elevator.new
  end

  def push_up(current_level, destination)
    @direction = "up"
    @elevator.destinations << destination
    if @elevator.floor > current_level
      @elevator.go_down(@elevator.destinations)
    elsif @elevator.floor < current_level
      @elevator.go_up(@elevator.destinations)
    else
      open_door
    end
  end

  def push_down(current_level, destination)
    @elevator.direction = "down"
    @elevator.destinations << destination
    if @elevator.floor < current_level
      @elevator.go_up(@elevator.destinations)
    elsif @elevator.floor > current_level
      @elevator.go_down(destination)
    else
      @elevator.open_door
    end
  end

end

allison = Tenant.new(6)
allison.push_down(6, 0)

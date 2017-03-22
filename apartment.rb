require_relative 'elevator'

class Apartment
  def initialize
    @floors = 36
    @elevator = Elevator.new
  end

end

require_relative 'elevator'
require_relative 'tenant'

class Apartment
  attr_reader :floors

  def initialize(floor_amount)
    @floors = floor_amount
  end

end

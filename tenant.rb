require_relative 'apartment'

class Tenant
  def initialize(floor)
    @resident_floor = floor
  end
end

allison = Tenant.new(6)

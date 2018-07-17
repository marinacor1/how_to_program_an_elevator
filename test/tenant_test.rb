require_relative "../lib/tenant"
gem "minitest"
require "minitest/autorun"
require "minitest/pride"

#to run: ruby test/tenant_test.rb

class TenantTest < Minitest::Test

  def test_tenant_initializes
    alex = Tenant.new(3)
    assert_equal 3, alex.resident_floor
  end

  def test_tenant_can_go_up_elevator
    alex = Tenant.new(3)
    alex.push_up(7)
    #tenant=> push_up
    #elevator => go_up(destinations) destinations = [7]
    assert_equal 7, alex.elevator.floor
  end

  def test_tenant_can_go_down_elevator

  end
end

require_relative "../lib/elevator"
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ElevatorTest < Minitest::Test

  def test_elevator_initializes
    e = Elevator.new
    assert_equal [], e.destinations
    assert_equal "stopped", e.direction
    assert_equal 0, e.floor
  end

  def test_elevator_goes_up
    e = Elevator.new
    e.go_up([1, 2, 3])
    assert_equal "up", e.direction
    assert_equal 3, e.floor
  end

  def test_elevator_goes_down
    e = Elevator.new
    e.go_down([3, 2, 1])
    assert_equal "down", e.direction
    assert_equal 1, e.floor
  end

end

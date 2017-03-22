require_relative "../lib/apartment"
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ApartmentTest < Minitest::Test

  def test_apartment_initializes
    apartment = Apartment.new(36)
    assert_equal 36, apartment.floors
  end
end

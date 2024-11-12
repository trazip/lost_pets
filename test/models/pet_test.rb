require "test_helper"

class PetTest < ActiveSupport::TestCase
  test "#found_days_ago" do
    snoopy = pets(:one)
    assert_instance_of Integer, snoopy.found_days_ago
  end
end

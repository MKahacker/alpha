require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  setup do
    @no_id = Food.create()
  end
  test "if validates" do
     refute @no_id.valid?
     assert @no_id.errors[:name].any?
  end
end

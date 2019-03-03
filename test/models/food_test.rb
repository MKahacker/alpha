require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  setup do
    @no_id = Food.create()
    @name = "Peanuts"
    @category = "nuts"
    @calories = 200
  end
  test "invalid if no parameters" do
     refute @no_id.valid?
     assert @no_id.errors[:name].any?
  end
  test "invalid when name missing" do
    refute Food.create(category: @category, calories: @calories).valid?
  end
  test "invalid when category missing" do
    refute Food.create(name:@name, calories: @calories).valid?
  end
  test "check invalid if calories left blank" do
    refute Food.create(name:@name, category: @category).valid?
  end
  test "check that if calories are negative invalid" do
    refute Food.create(name:@name,  category: @category,calories: -200).valid?
  end
  test "check that invalid if calories not number" do
    refute Food.create(name:@name,  category: @category,calories: "two hundred").valid?
    refute Food.create(name:@name,  category: @category,calories: true).valid?
  end
  test "check that invalid if calories are decimal" do
    refute Food.create(name:@name,  category: @category,calories: 7.8).valid?
  end
  test "check valid when calories, name, and category included" do
    assert Food.create(name:@name,  category: @category,calories: 200).valid?
  end
end

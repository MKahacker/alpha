require "application_system_test_case"

class FoodsTest < ApplicationSystemTestCase
  setup do
    @food = foods(:Banana)
  end

  test "creating a Food" do
    visit foods_new_url
    fill_in "Food Name", with: @food.name
    fill_in "Serving", with: 1.0
    fill_in "Category", with: @food.category
    fill_in "Calories", with: @food.calories
    fill_in "Carbohydrates", with: @food.carbohydrates
    fill_in "Protein", with: @food.protein
    fill_in "Fat", with: @food.fat

    click_on "Save"

    assert_text @food.name
  end

end

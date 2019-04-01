require "application_system_test_case"

class ServingsTest < ApplicationSystemTestCase
  setup do
    @serving = servings(:bserving)
  end

  test "visiting the index" do
    visit servings_url
    assert_selector "h2", text: "Your Food"
  end

  test "creating a Serving" do
    visit servings_url
    click_on "Add New Item"

    fill_in "Serving", with: (@serving.serving + 1)
    fill_in "Food Name", with: @serving.food_name
    click_on "Save"

    assert_text (@serving.serving+1).to_s
    click_on "Back"
  end

  test "updating a Serving" do
    visit serving_url(@serving)
    click_on "Edit", match: :first

    fill_in "Serving", with: (@serving.serving + 1)
    click_on "Save"

    assert_text (@serving.serving+1).to_s
    click_on "Back"
  end

  test "destroying a Serving" do
    visit serving_url(@serving)
    page.accept_confirm do
      click_on "Delete", match: :first
    end

    assert_no_text @serving.food_name
  end
end

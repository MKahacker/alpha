require "application_system_test_case"

class ServingsTest < ApplicationSystemTestCase
  setup do
    @serving = servings(:one)
  end

  test "visiting the index" do
    visit servings_url
    assert_selector "h1", text: "Servings"
  end

  test "creating a Serving" do
    visit servings_url
    click_on "New Serving"

    fill_in "Serving", with: @serving.serving
    click_on "Create Serving"

    assert_text "Serving was successfully created"
    click_on "Back"
  end

  test "updating a Serving" do
    visit servings_url
    click_on "Edit", match: :first

    fill_in "Serving", with: @serving.serving
    click_on "Update Serving"

    assert_text "Serving was successfully updated"
    click_on "Back"
  end

  test "destroying a Serving" do
    visit servings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Serving was successfully destroyed"
  end
end

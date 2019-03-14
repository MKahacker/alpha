require 'test_helper'

class FoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food = foods(:Banana)
  end

  test "Food objects created" do
    assert_equal 2, Food.count
  end

  test "should get new" do
    get "/foods/new"
    assert_response :success
  end

  test "should create food" do
    assert_difference('Food.count') do
      post "/foods", params: { food: {name: "Roasted Chicken", category: "Poultry", calories: 240, protein: 24, fat: 16, carbohydrates:1 } }
    end

    assert_redirected_to servings_url
  end

  # test "should get index" do
  #   get foods_url
  #   assert_response :success
  # end

  # test "should show food" do
  #   get food_url(@food)
  #   assert_response :success
  # end

#  test "should get edit" do
#    get edit_food_url(@food)
#    assert_response :success
#  end

  # test "should update food" do
  #   patch "/foods/" + @food.id.to_s, params: { food: {carbohydrates: 8  } }
  #   assert_redirected_to servings_url
  # end

  # test "should destroy food" do
  #   assert_difference('Food.count', -1) do
  #     delete food_url(@food)
  #   end
  #
  #   assert_redirected_to foods_url
  # end
end

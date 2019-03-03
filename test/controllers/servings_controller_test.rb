require 'test_helper'

class ServingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @serving = servings(:bserving)
  end

  test "serving_count" do
    assert_equal 2, Serving.count
  end
  test "serving has the right id" do
    assert_equal 2, @serving.id
  end

  test "root gets you to index" do
    assert_recognizes({controller: 'servings', action: 'index'}, '/')
  end

  test "should get index" do
    get servings_url
    assert_response :success
  end

  test "should get new" do
    get new_serving_url
    assert_response :success
  end

  test "should create serving" do
    assert_difference('Serving.count') do
      post servings_url, params: { serving: { serving: @serving.serving } }
    end

    assert_redirected_to serving_url(Serving.last)
  end

  test "should show serving" do
    get serving_url(@serving)
    assert_response :success
  end

  test "should get edit" do
    get edit_serving_url(@serving)
    assert_response :success
  end

  test "should update serving" do
    patch serving_url(@serving), params: { serving: { serving: @serving.serving } }
    assert_redirected_to serving_url(@serving)
  end

  test "should destroy serving" do
    assert_difference('Serving.count', -1) do
      delete serving_url(@serving)
    end

    assert_redirected_to servings_url
  end
end

require 'test_helper'

class ServingTest < ActiveSupport::TestCase
  setup do
    @serv = servings(:bserving)
  end

  test "check that there is two serving in test database" do
    assert_equal 2, Serving.all.count
  end

  test "test that serving cannot be left blank" do
   refute Serving.create().valid?
  end

  test "test that adding serving does make it valid" do
    assert Serving.create(serving: 1.0).valid?
  end

  test "check that count gets updated when adding new serving" do
    @new_serv = Serving.create(serving:1.0)
    @new_serv.save
    assert_equal 3, Serving.all.count
  end
end

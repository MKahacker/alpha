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

  test "When adding a serving less than zero it doesn't accept" do
    refute Serving.create(serving: -1.0).valid?
  end

  test "When adding a character or boolean value its not valid" do
    refute Serving.create(serving: "t").valid?
    refute Serving.create(serving: true).valid?
  end

  test "Adding a serving that is equal or greater than zero is valid" do
    assert Serving.create(serving: 0).valid?
    assert Serving.create(serving: 10.0).valid?
  end
end

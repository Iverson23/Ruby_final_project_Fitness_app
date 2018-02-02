require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  test "should get breakfast" do
    get meals_breakfast_url
    assert_response :success
  end

  test "should get lunch" do
    get meals_lunch_url
    assert_response :success
  end

  test "should get snack" do
    get meals_snack_url
    assert_response :success
  end

  test "should get dinner" do
    get meals_dinner_url
    assert_response :success
  end

end

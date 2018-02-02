require 'test_helper'

class ExcercisesControllerTest < ActionDispatch::IntegrationTest
  test "should get legs" do
    get excercises_legs_url
    assert_response :success
  end

  test "should get chest" do
    get excercises_chest_url
    assert_response :success
  end

  test "should get abs" do
    get excercises_abs_url
    assert_response :success
  end

  test "should get back" do
    get excercises_back_url
    assert_response :success
  end

  test "should get biceps" do
    get excercises_biceps_url
    assert_response :success
  end

  test "should get triceps" do
    get excercises_triceps_url
    assert_response :success
  end

  test "should get shoulders" do
    get excercises_shoulders_url
    assert_response :success
  end

end

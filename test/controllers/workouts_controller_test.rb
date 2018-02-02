require 'test_helper'

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get fullbody" do
    get workouts_fullbody_url
    assert_response :success
  end

  test "should get split" do
    get workouts_split_url
    assert_response :success
  end

  test "should get cardio" do
    get workouts_cardio_url
    assert_response :success
  end

  test "should get crossfit" do
    get workouts_crossfit_url
    assert_response :success
  end

end

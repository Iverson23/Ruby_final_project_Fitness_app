require 'test_helper'

class DietsControllerTest < ActionDispatch::IntegrationTest
  test "should get reducing" do
    get diets_reducing_url
    assert_response :success
  end

  test "should get bulking" do
    get diets_bulking_url
    assert_response :success
  end

end

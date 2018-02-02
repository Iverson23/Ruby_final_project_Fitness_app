require 'test_helper'

class TabataControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get tabata_about_url
    assert_response :success
  end

  test "should get timer" do
    get tabata_timer_url
    assert_response :success
  end

end

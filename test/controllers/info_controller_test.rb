require "test_helper"

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get hours_location" do
    get info_hours_location_url
    assert_response :success
  end
end

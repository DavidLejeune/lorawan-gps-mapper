require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get position" do
    get api_position_url
    assert_response :success
  end

end

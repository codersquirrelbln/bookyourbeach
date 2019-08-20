require 'test_helper'

class BokingControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get boking_destroy_url
    assert_response :success
  end

end

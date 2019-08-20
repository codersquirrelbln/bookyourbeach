require 'test_helper'

class BeachesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beaches_index_url
    assert_response :success
  end

  test "should get show" do
    get beaches_show_url
    assert_response :success
  end

end

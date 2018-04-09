require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get privacy" do
    get pages_privacy_url
    assert_response :success
  end

  test "should get inctroduction" do
    get pages_inctroduction_url
    assert_response :success
  end

end

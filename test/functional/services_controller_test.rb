require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  test "should get services" do
    get :services
    assert_response :success
  end

end

require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

end

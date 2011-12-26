require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get ads" do
    get :ads
    assert_response :success
  end

  test "should get subscriptions" do
    get :subscriptions
    assert_response :success
  end

  test "should get package_of_products" do
    get :package_of_products
    assert_response :success
  end

end

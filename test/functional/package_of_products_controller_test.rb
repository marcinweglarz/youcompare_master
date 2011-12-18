require 'test_helper'

class PackageOfProductsControllerTest < ActionController::TestCase
  setup do
    @package_of_product = package_of_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_of_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_of_product" do
    assert_difference('PackageOfProduct.count') do
      post :create, :package_of_product => @package_of_product.attributes
    end

    assert_redirected_to package_of_product_path(assigns(:package_of_product))
  end

  test "should show package_of_product" do
    get :show, :id => @package_of_product.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @package_of_product.to_param
    assert_response :success
  end

  test "should update package_of_product" do
    put :update, :id => @package_of_product.to_param, :package_of_product => @package_of_product.attributes
    assert_redirected_to package_of_product_path(assigns(:package_of_product))
  end

  test "should destroy package_of_product" do
    assert_difference('PackageOfProduct.count', -1) do
      delete :destroy, :id => @package_of_product.to_param
    end

    assert_redirected_to package_of_products_path
  end
end

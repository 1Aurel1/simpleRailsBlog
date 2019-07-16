require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get anglisht" do
    get :anglisht
    assert_response :success
  end

  test "should get matematik" do
    get :matematik
    assert_response :success
  end

  test "should get histori" do
    get :histori
    assert_response :success
  end

  test "should get tik" do
    get :tik
    assert_response :success
  end

  test "should get letersi" do
    get :letersi
    assert_response :success
  end

end

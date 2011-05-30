require 'test_helper'

class NutriologosControllerTest < ActionController::TestCase
  setup do
    @nutriologo = nutriologos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nutriologos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nutriologo" do
    assert_difference('Nutriologo.count') do
      post :create, :nutriologo => @nutriologo.attributes
    end

    assert_redirected_to nutriologo_path(assigns(:nutriologo))
  end

  test "should show nutriologo" do
    get :show, :id => @nutriologo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nutriologo.to_param
    assert_response :success
  end

  test "should update nutriologo" do
    put :update, :id => @nutriologo.to_param, :nutriologo => @nutriologo.attributes
    assert_redirected_to nutriologo_path(assigns(:nutriologo))
  end

  test "should destroy nutriologo" do
    assert_difference('Nutriologo.count', -1) do
      delete :destroy, :id => @nutriologo.to_param
    end

    assert_redirected_to nutriologos_path
  end
end

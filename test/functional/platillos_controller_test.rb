require 'test_helper'

class PlatillosControllerTest < ActionController::TestCase
  setup do
    @platillo = platillos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:platillos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create platillo" do
    assert_difference('Platillo.count') do
      post :create, :platillo => @platillo.attributes
    end

    assert_redirected_to platillo_path(assigns(:platillo))
  end

  test "should show platillo" do
    get :show, :id => @platillo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @platillo.to_param
    assert_response :success
  end

  test "should update platillo" do
    put :update, :id => @platillo.to_param, :platillo => @platillo.attributes
    assert_redirected_to platillo_path(assigns(:platillo))
  end

  test "should destroy platillo" do
    assert_difference('Platillo.count', -1) do
      delete :destroy, :id => @platillo.to_param
    end

    assert_redirected_to platillos_path
  end
end

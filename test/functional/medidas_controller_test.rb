require 'test_helper'

class MedidasControllerTest < ActionController::TestCase
  setup do
    @medida = medidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medida" do
    assert_difference('Medida.count') do
      post :create, :medida => @medida.attributes
    end

    assert_redirected_to medida_path(assigns(:medida))
  end

  test "should show medida" do
    get :show, :id => @medida.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @medida.to_param
    assert_response :success
  end

  test "should update medida" do
    put :update, :id => @medida.to_param, :medida => @medida.attributes
    assert_redirected_to medida_path(assigns(:medida))
  end

  test "should destroy medida" do
    assert_difference('Medida.count', -1) do
      delete :destroy, :id => @medida.to_param
    end

    assert_redirected_to medidas_path
  end
end

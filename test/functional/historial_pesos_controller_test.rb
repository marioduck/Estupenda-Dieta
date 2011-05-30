require 'test_helper'

class HistorialPesosControllerTest < ActionController::TestCase
  setup do
    @historial_peso = historial_pesos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historial_pesos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historial_peso" do
    assert_difference('HistorialPeso.count') do
      post :create, :historial_peso => @historial_peso.attributes
    end

    assert_redirected_to historial_peso_path(assigns(:historial_peso))
  end

  test "should show historial_peso" do
    get :show, :id => @historial_peso.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @historial_peso.to_param
    assert_response :success
  end

  test "should update historial_peso" do
    put :update, :id => @historial_peso.to_param, :historial_peso => @historial_peso.attributes
    assert_redirected_to historial_peso_path(assigns(:historial_peso))
  end

  test "should destroy historial_peso" do
    assert_difference('HistorialPeso.count', -1) do
      delete :destroy, :id => @historial_peso.to_param
    end

    assert_redirected_to historial_pesos_path
  end
end

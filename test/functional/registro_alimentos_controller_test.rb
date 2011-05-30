require 'test_helper'

class RegistroAlimentosControllerTest < ActionController::TestCase
  setup do
    @registro_alimento = registro_alimentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_alimentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_alimento" do
    assert_difference('RegistroAlimento.count') do
      post :create, :registro_alimento => @registro_alimento.attributes
    end

    assert_redirected_to registro_alimento_path(assigns(:registro_alimento))
  end

  test "should show registro_alimento" do
    get :show, :id => @registro_alimento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @registro_alimento.to_param
    assert_response :success
  end

  test "should update registro_alimento" do
    put :update, :id => @registro_alimento.to_param, :registro_alimento => @registro_alimento.attributes
    assert_redirected_to registro_alimento_path(assigns(:registro_alimento))
  end

  test "should destroy registro_alimento" do
    assert_difference('RegistroAlimento.count', -1) do
      delete :destroy, :id => @registro_alimento.to_param
    end

    assert_redirected_to registro_alimentos_path
  end
end

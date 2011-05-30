require 'test_helper'

class EnfermedadsControllerTest < ActionController::TestCase
  setup do
    @enfermedad = enfermedads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enfermedads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enfermedad" do
    assert_difference('Enfermedad.count') do
      post :create, :enfermedad => @enfermedad.attributes
    end

    assert_redirected_to enfermedad_path(assigns(:enfermedad))
  end

  test "should show enfermedad" do
    get :show, :id => @enfermedad.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @enfermedad.to_param
    assert_response :success
  end

  test "should update enfermedad" do
    put :update, :id => @enfermedad.to_param, :enfermedad => @enfermedad.attributes
    assert_redirected_to enfermedad_path(assigns(:enfermedad))
  end

  test "should destroy enfermedad" do
    assert_difference('Enfermedad.count', -1) do
      delete :destroy, :id => @enfermedad.to_param
    end

    assert_redirected_to enfermedads_path
  end
end

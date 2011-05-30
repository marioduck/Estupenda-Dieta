require 'test_helper'

class PlanAlimenticiosControllerTest < ActionController::TestCase
  setup do
    @plan_alimenticio = plan_alimenticios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_alimenticios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_alimenticio" do
    assert_difference('PlanAlimenticio.count') do
      post :create, :plan_alimenticio => @plan_alimenticio.attributes
    end

    assert_redirected_to plan_alimenticio_path(assigns(:plan_alimenticio))
  end

  test "should show plan_alimenticio" do
    get :show, :id => @plan_alimenticio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @plan_alimenticio.to_param
    assert_response :success
  end

  test "should update plan_alimenticio" do
    put :update, :id => @plan_alimenticio.to_param, :plan_alimenticio => @plan_alimenticio.attributes
    assert_redirected_to plan_alimenticio_path(assigns(:plan_alimenticio))
  end

  test "should destroy plan_alimenticio" do
    assert_difference('PlanAlimenticio.count', -1) do
      delete :destroy, :id => @plan_alimenticio.to_param
    end

    assert_redirected_to plan_alimenticios_path
  end
end

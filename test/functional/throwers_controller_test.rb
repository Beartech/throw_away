require 'test_helper'

class ThrowersControllerTest < ActionController::TestCase
  setup do
    @thrower = throwers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:throwers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thrower" do
    assert_difference('Thrower.count') do
      post :create, thrower: { name: @thrower.name }
    end

    assert_redirected_to thrower_path(assigns(:thrower))
  end

  test "should show thrower" do
    get :show, id: @thrower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thrower
    assert_response :success
  end

  test "should update thrower" do
    put :update, id: @thrower, thrower: { name: @thrower.name }
    assert_redirected_to thrower_path(assigns(:thrower))
  end

  test "should destroy thrower" do
    assert_difference('Thrower.count', -1) do
      delete :destroy, id: @thrower
    end

    assert_redirected_to throwers_path
  end
end

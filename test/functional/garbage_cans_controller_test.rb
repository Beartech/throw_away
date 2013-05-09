require 'test_helper'

class GarbageCansControllerTest < ActionController::TestCase
  setup do
    @garbage_can = garbage_cans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garbage_cans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garbage_can" do
    assert_difference('GarbageCan.count') do
      post :create, garbage_can: { name: @garbage_can.name }
    end

    assert_redirected_to garbage_can_path(assigns(:garbage_can))
  end

  test "should show garbage_can" do
    get :show, id: @garbage_can
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @garbage_can
    assert_response :success
  end

  test "should update garbage_can" do
    put :update, id: @garbage_can, garbage_can: { name: @garbage_can.name }
    assert_redirected_to garbage_can_path(assigns(:garbage_can))
  end

  test "should destroy garbage_can" do
    assert_difference('GarbageCan.count', -1) do
      delete :destroy, id: @garbage_can
    end

    assert_redirected_to garbage_cans_path
  end
end

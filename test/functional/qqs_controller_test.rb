require 'test_helper'

class QqsControllerTest < ActionController::TestCase
  setup do
    @qq = qqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qq" do
    assert_difference('Qq.count') do
      post :create, :qq => @qq.attributes
    end

    assert_redirected_to qq_path(assigns(:qq))
  end

  test "should show qq" do
    get :show, :id => @qq.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @qq.to_param
    assert_response :success
  end

  test "should update qq" do
    put :update, :id => @qq.to_param, :qq => @qq.attributes
    assert_redirected_to qq_path(assigns(:qq))
  end

  test "should destroy qq" do
    assert_difference('Qq.count', -1) do
      delete :destroy, :id => @qq.to_param
    end

    assert_redirected_to qqs_path
  end
end

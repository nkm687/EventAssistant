require 'test_helper'

class UserratingsControllerTest < ActionController::TestCase
  setup do
    @userrating = userratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userrating" do
    assert_difference('Userrating.count') do
      post :create, userrating: { demo: @userrating.demo, name: @userrating.name, rating: @userrating.rating }
    end

    assert_redirected_to userrating_path(assigns(:userrating))
  end

  test "should show userrating" do
    get :show, id: @userrating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userrating
    assert_response :success
  end

  test "should update userrating" do
    put :update, id: @userrating, userrating: { demo: @userrating.demo, name: @userrating.name, rating: @userrating.rating }
    assert_redirected_to userrating_path(assigns(:userrating))
  end

  test "should destroy userrating" do
    assert_difference('Userrating.count', -1) do
      delete :destroy, id: @userrating
    end

    assert_redirected_to userratings_path
  end
end

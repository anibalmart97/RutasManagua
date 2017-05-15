require 'test_helper'

class MyUsersControllerTest < ActionController::TestCase
  setup do
    @my_user = my_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_user" do
    assert_difference('MyUser.count') do
      post :create, my_user: { user_name: @my_user.user_name, user_password: @my_user.user_password }
    end

    assert_redirected_to my_user_path(assigns(:my_user))
  end

  test "should show my_user" do
    get :show, id: @my_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_user
    assert_response :success
  end

  test "should update my_user" do
    patch :update, id: @my_user, my_user: { user_name: @my_user.user_name, user_password: @my_user.user_password }
    assert_redirected_to my_user_path(assigns(:my_user))
  end

  test "should destroy my_user" do
    assert_difference('MyUser.count', -1) do
      delete :destroy, id: @my_user
    end

    assert_redirected_to my_users_path
  end
end

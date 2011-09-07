require 'test_helper'

class ReviewOfUsersControllerTest < ActionController::TestCase
  setup do
    @review_of_user = review_of_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:review_of_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review_of_user" do
    assert_difference('ReviewOfUser.count') do
      post :create, :review_of_user => @review_of_user.attributes
    end

    assert_redirected_to review_of_user_path(assigns(:review_of_user))
  end

  test "should show review_of_user" do
    get :show, :id => @review_of_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @review_of_user.to_param
    assert_response :success
  end

  test "should update review_of_user" do
    put :update, :id => @review_of_user.to_param, :review_of_user => @review_of_user.attributes
    assert_redirected_to review_of_user_path(assigns(:review_of_user))
  end

  test "should destroy review_of_user" do
    assert_difference('ReviewOfUser.count', -1) do
      delete :destroy, :id => @review_of_user.to_param
    end

    assert_redirected_to review_of_users_path
  end
end

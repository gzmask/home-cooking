require 'test_helper'

class ReviewOfDishesControllerTest < ActionController::TestCase
  setup do
    @review_of_dish = review_of_dishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:review_of_dishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review_of_dish" do
    assert_difference('ReviewOfDish.count') do
      post :create, :review_of_dish => @review_of_dish.attributes
    end

    assert_redirected_to review_of_dish_path(assigns(:review_of_dish))
  end

  test "should show review_of_dish" do
    get :show, :id => @review_of_dish.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @review_of_dish.to_param
    assert_response :success
  end

  test "should update review_of_dish" do
    put :update, :id => @review_of_dish.to_param, :review_of_dish => @review_of_dish.attributes
    assert_redirected_to review_of_dish_path(assigns(:review_of_dish))
  end

  test "should destroy review_of_dish" do
    assert_difference('ReviewOfDish.count', -1) do
      delete :destroy, :id => @review_of_dish.to_param
    end

    assert_redirected_to review_of_dishes_path
  end
end

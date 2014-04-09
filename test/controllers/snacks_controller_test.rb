require 'test_helper'

class SnacksControllerTest < ActionController::TestCase
  setup do
    @snack = snacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snack" do
    assert_difference('Snack.count') do
      post :create, snack: { description: @snack.description }
    end

    assert_redirected_to snack_path(assigns(:snack))
  end

  test "should show snack" do
    get :show, id: @snack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @snack
    assert_response :success
  end

  test "should update snack" do
    patch :update, id: @snack, snack: { description: @snack.description }
    assert_redirected_to snack_path(assigns(:snack))
  end

  test "should destroy snack" do
    assert_difference('Snack.count', -1) do
      delete :destroy, id: @snack
    end

    assert_redirected_to snacks_path
  end
end

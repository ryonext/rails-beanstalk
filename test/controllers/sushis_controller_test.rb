require 'test_helper'

class SushisControllerTest < ActionController::TestCase
  setup do
    @sushi = sushis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sushis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sushi" do
    assert_difference('Sushi.count') do
      post :create, sushi: {  }
    end

    assert_redirected_to sushi_path(assigns(:sushi))
  end

  test "should show sushi" do
    get :show, id: @sushi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sushi
    assert_response :success
  end

  test "should update sushi" do
    patch :update, id: @sushi, sushi: {  }
    assert_redirected_to sushi_path(assigns(:sushi))
  end

  test "should destroy sushi" do
    assert_difference('Sushi.count', -1) do
      delete :destroy, id: @sushi
    end

    assert_redirected_to sushis_path
  end
end

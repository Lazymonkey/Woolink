require 'test_helper'

class CollectsControllerTest < ActionController::TestCase
  setup do
    @collect = collects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collect" do
    assert_difference('Collect.count') do
      post :create, collect: {  }
    end

    assert_redirected_to collect_path(assigns(:collect))
  end

  test "should show collect" do
    get :show, id: @collect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collect
    assert_response :success
  end

  test "should update collect" do
    put :update, id: @collect, collect: {  }
    assert_redirected_to collect_path(assigns(:collect))
  end

  test "should destroy collect" do
    assert_difference('Collect.count', -1) do
      delete :destroy, id: @collect
    end

    assert_redirected_to collects_path
  end
end

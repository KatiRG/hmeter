require 'test_helper'

class UsertablesControllerTest < ActionController::TestCase
  setup do
    @usertable = usertables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usertables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usertable" do
    assert_difference('Usertable.count') do
      post :create, usertable: @usertable.attributes
    end

    assert_redirected_to usertable_path(assigns(:usertable))
  end

  test "should show usertable" do
    get :show, id: @usertable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usertable.to_param
    assert_response :success
  end

  test "should update usertable" do
    put :update, id: @usertable.to_param, usertable: @usertable.attributes
    assert_redirected_to usertable_path(assigns(:usertable))
  end

  test "should destroy usertable" do
    assert_difference('Usertable.count', -1) do
      delete :destroy, id: @usertable.to_param
    end

    assert_redirected_to usertables_path
  end
end

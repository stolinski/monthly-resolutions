require 'test_helper'

class ResolvesControllerTest < ActionController::TestCase
  setup do
    @resolf = resolves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resolves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resolf" do
    assert_difference('Resolve.count') do
      post :create, :resolf => { :compleated_date => @resolf.compleated_date, :completed => @resolf.completed, :date => @resolf.date, :name => @resolf.name, :user_id => @resolf.user_id }
    end

    assert_redirected_to resolf_path(assigns(:resolf))
  end

  test "should show resolf" do
    get :show, :id => @resolf
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @resolf
    assert_response :success
  end

  test "should update resolf" do
    put :update, :id => @resolf, :resolf => { :compleated_date => @resolf.compleated_date, :completed => @resolf.completed, :date => @resolf.date, :name => @resolf.name, :user_id => @resolf.user_id }
    assert_redirected_to resolf_path(assigns(:resolf))
  end

  test "should destroy resolf" do
    assert_difference('Resolve.count', -1) do
      delete :destroy, :id => @resolf
    end

    assert_redirected_to resolves_path
  end
end

require 'test_helper'

class TasksListsControllerTest < ActionController::TestCase
  setup do
    @tasks_list = tasks_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tasks_list" do
    assert_difference('TasksList.count') do
      post :create, tasks_list: { description: @tasks_list.description, title: @tasks_list.title }
    end

    assert_redirected_to tasks_list_path(assigns(:tasks_list))
  end

  test "should show tasks_list" do
    get :show, id: @tasks_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tasks_list
    assert_response :success
  end

  test "should update tasks_list" do
    patch :update, id: @tasks_list, tasks_list: { description: @tasks_list.description, title: @tasks_list.title }
    assert_redirected_to tasks_list_path(assigns(:tasks_list))
  end

  test "should destroy tasks_list" do
    assert_difference('TasksList.count', -1) do
      delete :destroy, id: @tasks_list
    end

    assert_redirected_to tasks_lists_path
  end
end

require 'test_helper'

class SideBoardsControllerTest < ActionController::TestCase
  setup do
    @side_board = side_boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:side_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create side_board" do
    assert_difference('SideBoard.count') do
      post :create, side_board: { side_id: @side_board.side_id }
    end

    assert_redirected_to side_board_path(assigns(:side_board))
  end

  test "should show side_board" do
    get :show, id: @side_board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @side_board
    assert_response :success
  end

  test "should update side_board" do
    patch :update, id: @side_board, side_board: { side_id: @side_board.side_id }
    assert_redirected_to side_board_path(assigns(:side_board))
  end

  test "should destroy side_board" do
    assert_difference('SideBoard.count', -1) do
      delete :destroy, id: @side_board
    end

    assert_redirected_to side_boards_path
  end
end

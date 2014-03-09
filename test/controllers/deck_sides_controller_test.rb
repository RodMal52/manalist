require 'test_helper'

class DeckSidesControllerTest < ActionController::TestCase
  setup do
    @deck_side = deck_sides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deck_sides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deck_side" do
    assert_difference('DeckSide.count') do
      post :create, deck_side: { deck_id: @deck_side.deck_id, side_id: @deck_side.side_id }
    end

    assert_redirected_to deck_side_path(assigns(:deck_side))
  end

  test "should show deck_side" do
    get :show, id: @deck_side
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deck_side
    assert_response :success
  end

  test "should update deck_side" do
    patch :update, id: @deck_side, deck_side: { deck_id: @deck_side.deck_id, side_id: @deck_side.side_id }
    assert_redirected_to deck_side_path(assigns(:deck_side))
  end

  test "should destroy deck_side" do
    assert_difference('DeckSide.count', -1) do
      delete :destroy, id: @deck_side
    end

    assert_redirected_to deck_sides_path
  end
end

require 'test_helper'

class SideCardsControllerTest < ActionController::TestCase
  setup do
    @side_card = side_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:side_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create side_card" do
    assert_difference('SideCard.count') do
      post :create, side_card: { card_name: @side_card.card_name, quantity: @side_card.quantity, side_id: @side_card.side_id }
    end

    assert_redirected_to side_card_path(assigns(:side_card))
  end

  test "should show side_card" do
    get :show, id: @side_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @side_card
    assert_response :success
  end

  test "should update side_card" do
    patch :update, id: @side_card, side_card: { card_name: @side_card.card_name, quantity: @side_card.quantity, side_id: @side_card.side_id }
    assert_redirected_to side_card_path(assigns(:side_card))
  end

  test "should destroy side_card" do
    assert_difference('SideCard.count', -1) do
      delete :destroy, id: @side_card
    end

    assert_redirected_to side_cards_path
  end
end

require 'test_helper'

class CardExpansionsControllerTest < ActionController::TestCase
  setup do
    @card_expansion = card_expansions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:card_expansions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card_expansion" do
    assert_difference('CardExpansion.count') do
      post :create, card_expansion: { card_name: @card_expansion.card_name, card_num: @card_expansion.card_num, image: @card_expansion.image, rarity: @card_expansion.rarity, set_code: @card_expansion.set_code }
    end

    assert_redirected_to card_expansion_path(assigns(:card_expansion))
  end

  test "should show card_expansion" do
    get :show, id: @card_expansion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card_expansion
    assert_response :success
  end

  test "should update card_expansion" do
    patch :update, id: @card_expansion, card_expansion: { card_name: @card_expansion.card_name, card_num: @card_expansion.card_num, image: @card_expansion.image, rarity: @card_expansion.rarity, set_code: @card_expansion.set_code }
    assert_redirected_to card_expansion_path(assigns(:card_expansion))
  end

  test "should destroy card_expansion" do
    assert_difference('CardExpansion.count', -1) do
      delete :destroy, id: @card_expansion
    end

    assert_redirected_to card_expansions_path
  end
end

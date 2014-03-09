require 'test_helper'

class DecksControllerTest < ActionController::TestCase
  setup do
    @deck = decks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deck" do
    assert_difference('Deck.count') do
      post :create, deck: { colors: @deck.colors, creation_date: @deck.creation_date, deck_id: @deck.deck_id, format: @deck.format, last_update: @deck.last_update, name: @deck.name, rating: @deck.rating, type: @deck.type, username: @deck.username }
    end

    assert_redirected_to deck_path(assigns(:deck))
  end

  test "should show deck" do
    get :show, id: @deck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deck
    assert_response :success
  end

  test "should update deck" do
    patch :update, id: @deck, deck: { colors: @deck.colors, creation_date: @deck.creation_date, deck_id: @deck.deck_id, format: @deck.format, last_update: @deck.last_update, name: @deck.name, rating: @deck.rating, type: @deck.type, username: @deck.username }
    assert_redirected_to deck_path(assigns(:deck))
  end

  test "should destroy deck" do
    assert_difference('Deck.count', -1) do
      delete :destroy, id: @deck
    end

    assert_redirected_to decks_path
  end
end

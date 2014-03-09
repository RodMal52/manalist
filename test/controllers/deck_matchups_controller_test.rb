require 'test_helper'

class DeckMatchupsControllerTest < ActionController::TestCase
  setup do
    @deck_matchup = deck_matchups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deck_matchups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deck_matchup" do
    assert_difference('DeckMatchup.count') do
      post :create, deck_matchup: { config_id: @deck_matchup.config_id, deck_id_1: @deck_matchup.deck_id_1, deck_id_2: @deck_matchup.deck_id_2, draws: @deck_matchup.draws, losses: @deck_matchup.losses, match_date: @deck_matchup.match_date, wins: @deck_matchup.wins }
    end

    assert_redirected_to deck_matchup_path(assigns(:deck_matchup))
  end

  test "should show deck_matchup" do
    get :show, id: @deck_matchup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deck_matchup
    assert_response :success
  end

  test "should update deck_matchup" do
    patch :update, id: @deck_matchup, deck_matchup: { config_id: @deck_matchup.config_id, deck_id_1: @deck_matchup.deck_id_1, deck_id_2: @deck_matchup.deck_id_2, draws: @deck_matchup.draws, losses: @deck_matchup.losses, match_date: @deck_matchup.match_date, wins: @deck_matchup.wins }
    assert_redirected_to deck_matchup_path(assigns(:deck_matchup))
  end

  test "should destroy deck_matchup" do
    assert_difference('DeckMatchup.count', -1) do
      delete :destroy, id: @deck_matchup
    end

    assert_redirected_to deck_matchups_path
  end
end

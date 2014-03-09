require 'test_helper'

class PlayerRelationshipsControllerTest < ActionController::TestCase
  setup do
    @player_relationship = player_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_relationship" do
    assert_difference('PlayerRelationship.count') do
      post :create, player_relationship: { relationship_type: @player_relationship.relationship_type, username_1: @player_relationship.username_1, username_2: @player_relationship.username_2 }
    end

    assert_redirected_to player_relationship_path(assigns(:player_relationship))
  end

  test "should show player_relationship" do
    get :show, id: @player_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_relationship
    assert_response :success
  end

  test "should update player_relationship" do
    patch :update, id: @player_relationship, player_relationship: { relationship_type: @player_relationship.relationship_type, username_1: @player_relationship.username_1, username_2: @player_relationship.username_2 }
    assert_redirected_to player_relationship_path(assigns(:player_relationship))
  end

  test "should destroy player_relationship" do
    assert_difference('PlayerRelationship.count', -1) do
      delete :destroy, id: @player_relationship
    end

    assert_redirected_to player_relationships_path
  end
end

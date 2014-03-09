class PlayerRelationshipsController < ApplicationController
  before_action :set_player_relationship, only: [:show, :edit, :update, :destroy]

  # GET /player_relationships
  # GET /player_relationships.json
  def index
    @player_relationships = PlayerRelationship.all
  end

  # GET /player_relationships/1
  # GET /player_relationships/1.json
  def show
  end

  # GET /player_relationships/new
  def new
    @player_relationship = PlayerRelationship.new
  end

  # GET /player_relationships/1/edit
  def edit
  end

  # POST /player_relationships
  # POST /player_relationships.json
  def create
    @player_relationship = PlayerRelationship.new(player_relationship_params)

    respond_to do |format|
      if @player_relationship.save
        format.html { redirect_to @player_relationship, notice: 'Player relationship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @player_relationship }
      else
        format.html { render action: 'new' }
        format.json { render json: @player_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_relationships/1
  # PATCH/PUT /player_relationships/1.json
  def update
    respond_to do |format|
      if @player_relationship.update(player_relationship_params)
        format.html { redirect_to @player_relationship, notice: 'Player relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @player_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_relationships/1
  # DELETE /player_relationships/1.json
  def destroy
    @player_relationship.destroy
    respond_to do |format|
      format.html { redirect_to player_relationships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_relationship
      @player_relationship = PlayerRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_relationship_params
      params.require(:player_relationship).permit(:username_1, :username_2, :relationship_type)
    end
end

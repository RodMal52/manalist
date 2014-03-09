class DeckMatchupsController < ApplicationController
  before_action :set_deck_matchup, only: [:show, :edit, :update, :destroy]

  # GET /deck_matchups
  # GET /deck_matchups.json
  def index
    @deck_matchups = DeckMatchup.all
  end

  # GET /deck_matchups/1
  # GET /deck_matchups/1.json
  def show
  end

  # GET /deck_matchups/new
  def new
    @deck_matchup = DeckMatchup.new
  end

  # GET /deck_matchups/1/edit
  def edit
  end

  # POST /deck_matchups
  # POST /deck_matchups.json
  def create
    @deck_matchup = DeckMatchup.new(deck_matchup_params)

    respond_to do |format|
      if @deck_matchup.save
        format.html { redirect_to @deck_matchup, notice: 'Deck matchup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @deck_matchup }
      else
        format.html { render action: 'new' }
        format.json { render json: @deck_matchup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deck_matchups/1
  # PATCH/PUT /deck_matchups/1.json
  def update
    respond_to do |format|
      if @deck_matchup.update(deck_matchup_params)
        format.html { redirect_to @deck_matchup, notice: 'Deck matchup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @deck_matchup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deck_matchups/1
  # DELETE /deck_matchups/1.json
  def destroy
    @deck_matchup.destroy
    respond_to do |format|
      format.html { redirect_to deck_matchups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck_matchup
      @deck_matchup = DeckMatchup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deck_matchup_params
      params.require(:deck_matchup).permit(:deck_id_1, :deck_id_2, :wins, :losses, :draws, :match_date, :config_id)
    end
end

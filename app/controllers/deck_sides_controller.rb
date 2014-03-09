class DeckSidesController < ApplicationController
  before_action :set_deck_side, only: [:show, :edit, :update, :destroy]

  # GET /deck_sides
  # GET /deck_sides.json
  def index
    @deck_sides = DeckSide.all
  end

  # GET /deck_sides/1
  # GET /deck_sides/1.json
  def show
  end

  # GET /deck_sides/new
  def new
    @deck_side = DeckSide.new
  end

  # GET /deck_sides/1/edit
  def edit
  end

  # POST /deck_sides
  # POST /deck_sides.json
  def create
    @deck_side = DeckSide.new(deck_side_params)

    respond_to do |format|
      if @deck_side.save
        format.html { redirect_to @deck_side, notice: 'Deck side was successfully created.' }
        format.json { render action: 'show', status: :created, location: @deck_side }
      else
        format.html { render action: 'new' }
        format.json { render json: @deck_side.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deck_sides/1
  # PATCH/PUT /deck_sides/1.json
  def update
    respond_to do |format|
      if @deck_side.update(deck_side_params)
        format.html { redirect_to @deck_side, notice: 'Deck side was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @deck_side.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deck_sides/1
  # DELETE /deck_sides/1.json
  def destroy
    @deck_side.destroy
    respond_to do |format|
      format.html { redirect_to deck_sides_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck_side
      @deck_side = DeckSide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deck_side_params
      params.require(:deck_side).permit(:deck_id, :side_id)
    end
end

class SideCardsController < ApplicationController
  before_action :set_side_card, only: [:show, :edit, :update, :destroy]

  # GET /side_cards
  # GET /side_cards.json
  def index
    @side_cards = SideCard.all
  end

  # GET /side_cards/1
  # GET /side_cards/1.json
  def show
  end

  # GET /side_cards/new
  def new
    @side_card = SideCard.new
  end

  # GET /side_cards/1/edit
  def edit
  end

  # POST /side_cards
  # POST /side_cards.json
  def create
    @side_card = SideCard.new(side_card_params)

    respond_to do |format|
      if @side_card.save
        format.html { redirect_to @side_card, notice: 'Side card was successfully created.' }
        format.json { render action: 'show', status: :created, location: @side_card }
      else
        format.html { render action: 'new' }
        format.json { render json: @side_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /side_cards/1
  # PATCH/PUT /side_cards/1.json
  def update
    respond_to do |format|
      if @side_card.update(side_card_params)
        format.html { redirect_to @side_card, notice: 'Side card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @side_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /side_cards/1
  # DELETE /side_cards/1.json
  def destroy
    @side_card.destroy
    respond_to do |format|
      format.html { redirect_to side_cards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_side_card
      @side_card = SideCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def side_card_params
      params.require(:side_card).permit(:side_id, :card_name, :quantity)
    end
end

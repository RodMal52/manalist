class CardExpansionsController < ApplicationController
  before_action :set_card_expansion, only: [:show, :edit, :update, :destroy]

  # GET /card_expansions
  # GET /card_expansions.json
  def index
    @card_expansions = CardExpansion.all
  end

  # GET /card_expansions/1
  # GET /card_expansions/1.json
  def show
  end

  # GET /card_expansions/new
  def new
    @card_expansion = CardExpansion.new
  end

  # GET /card_expansions/1/edit
  def edit
  end

  # POST /card_expansions
  # POST /card_expansions.json
  def create
    @card_expansion = CardExpansion.new(card_expansion_params)

    respond_to do |format|
      if @card_expansion.save
        format.html { redirect_to @card_expansion, notice: 'Card expansion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @card_expansion }
      else
        format.html { render action: 'new' }
        format.json { render json: @card_expansion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_expansions/1
  # PATCH/PUT /card_expansions/1.json
  def update
    respond_to do |format|
      if @card_expansion.update(card_expansion_params)
        format.html { redirect_to @card_expansion, notice: 'Card expansion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @card_expansion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_expansions/1
  # DELETE /card_expansions/1.json
  def destroy
    @card_expansion.destroy
    respond_to do |format|
      format.html { redirect_to card_expansions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_expansion
      @card_expansion = CardExpansion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_expansion_params
      params.require(:card_expansion).permit( :rarity, :card_num, :image)
    end
end

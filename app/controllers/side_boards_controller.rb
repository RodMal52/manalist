class SideBoardsController < ApplicationController
  before_action :set_side_board, only: [:show, :edit, :update, :destroy]

  # GET /side_boards
  # GET /side_boards.json
  def index
    @side_boards = SideBoard.all
  end

  # GET /side_boards/1
  # GET /side_boards/1.json
  def show
  end

  # GET /side_boards/new
  def new
    @side_board = SideBoard.new
  end

  # GET /side_boards/1/edit
  def edit
  end

  # POST /side_boards
  # POST /side_boards.json
  def create
    @side_board = SideBoard.new(side_board_params)

    respond_to do |format|
      if @side_board.save
        format.html { redirect_to @side_board, notice: 'Side board was successfully created.' }
        format.json { render action: 'show', status: :created, location: @side_board }
      else
        format.html { render action: 'new' }
        format.json { render json: @side_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /side_boards/1
  # PATCH/PUT /side_boards/1.json
  def update
    respond_to do |format|
      if @side_board.update(side_board_params)
        format.html { redirect_to @side_board, notice: 'Side board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @side_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /side_boards/1
  # DELETE /side_boards/1.json
  def destroy
    @side_board.destroy
    respond_to do |format|
      format.html { redirect_to side_boards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_side_board
      @side_board = SideBoard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def side_board_params
      params.require(:side_board).permit(:side_id)
    end
end

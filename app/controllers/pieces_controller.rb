class PiecesController < ApplicationController
  before_filter :set_piece, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!, only: [:index, :show]

  respond_to :html

  def index
    @pieces = Piece.all.paginate(:per_page => 10, :page => params[:page]||1)
  end

  def show
  end

  def new
    @piece = Piece.new
  end

  def edit
  end

  def create
    @piece = Piece.new(params[:piece].merge(:user_id => current_user.id))
    @piece.save
    respond_with(@piece)
  end

  def update
    @piece.update_attributes(params[:piece].merge(:updated_by => current_user.id))
    respond_with(@piece)
  end

  def destroy
    @piece.destroy
    respond_with(@piece)
  end

  private
  def set_piece
    @piece = Piece.find(params[:id])
  end
end

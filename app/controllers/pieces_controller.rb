class PiecesController < ApplicationController
  before_filter :set_piece, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pieces = Piece.all
    respond_with(@pieces)
  end

  def show
    respond_with(@piece)
  end

  def new
    @piece = Piece.new
    respond_with(@piece)
  end

  def edit
  end

  def create
    @piece = Piece.new(params[:piece])
    @piece.save
    respond_with(@piece)
  end

  def update
    @piece.update_attributes(params[:piece])
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

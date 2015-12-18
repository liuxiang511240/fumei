class PoetriesController < ApplicationController
  before_filter :set_poetry, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!, only: [:index, :show]

  respond_to :html

  def index
    @poetries = Poetry.all.paginate(:page => params[:page]||1, :per_page => 15)
  end

  def show
  end

  def new
    @poetry = Poetry.new
  end

  def edit
  end

  def create
    @poetry = Poetry.new(params[:poetry])
    @poetry.save
  end

  def update
    @poetry.update_attributes(params[:poetry])
  end

  def destroy
    @poetry.destroy
  end

  private
  def set_poetry
    @poetry = Poetry.find(params[:id])
  end
end

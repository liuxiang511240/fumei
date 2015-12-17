class PoetriesController < ApplicationController
  before_filter :set_poetry, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!, only: [:index, :show]

  respond_to :html

  def index
    @poetries = Poetry.all
    respond_with(@poetries)
  end

  def show
    respond_with(@poetry)
  end

  def new
    @poetry = Poetry.new
    respond_with(@poetry)
  end

  def edit
  end

  def create
    @poetry = Poetry.new(params[:poetry])
    @poetry.save
    respond_with(@poetry)
  end

  def update
    @poetry.update_attributes(params[:poetry])
    respond_with(@poetry)
  end

  def destroy
    @poetry.destroy
    respond_with(@poetry)
  end

  private
  def set_poetry
    @poetry = Poetry.find(params[:id])
  end
end

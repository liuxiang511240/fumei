class ProsesController < ApplicationController
  before_filter :set_prose, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!, only: [:index, :show]

  respond_to :html

  def index
    @proses = Prose.all.paginate(:per_page => 10, :page => params[:page]||1)
  end

  def show
  end

  def new
    @prose = Prose.new
  end

  def edit
  end

  def create
    @prose = Prose.new(params[:prose])
    @prose.save
  end

  def update
    @prose.update_attributes(params[:prose])
  end

  def destroy
    @prose.destroy
  end

  private
  def set_prose
    @prose = Prose.find(params[:id])
  end
end

class ProsesController < ApplicationController
  before_filter :set_prose, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @proses = Prose.all
    respond_with(@proses)
  end

  def show
    respond_with(@prose)
  end

  def new
    @prose = Prose.new
    respond_with(@prose)
  end

  def edit
  end

  def create
    @prose = Prose.new(params[:prose])
    @prose.save
    respond_with(@prose)
  end

  def update
    @prose.update_attributes(params[:prose])
    respond_with(@prose)
  end

  def destroy
    @prose.destroy
    respond_with(@prose)
  end

  private
    def set_prose
      @prose = Prose.find(params[:id])
    end
end

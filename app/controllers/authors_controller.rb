class AuthorsController < ApplicationController
  before_filter :set_author, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!, only: [:index, :show]

  respond_to :html

  def index
    @authors = Author.all.paginate(:per_page => 10, :page => params[:page]||1)
  end

  def show
  end

  def new
    @author = Author.new
  end

  def edit
  end

  def create
    @author = Author.new(params[:author])
    @author.save
  end

  def update
    @author.update_attributes(params[:author])
  end

  def destroy
    @author.destroy
  end

  private
    def set_author
      @author = Author.find(params[:id])
    end
end

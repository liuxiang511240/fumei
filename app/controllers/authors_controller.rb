class AuthorsController < ApplicationController
  before_filter :set_author, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!, only: [:index, :show]

  respond_to :html

  def index
    @authors = Author.all
    respond_with(@authors)
  end

  def show
    respond_with(@author)
  end

  def new
    @author = Author.new
    respond_with(@author)
  end

  def edit
  end

  def create
    @author = Author.new(params[:author])
    @author.save
    respond_with(@author)
  end

  def update
    @author.update_attributes(params[:author])
    respond_with(@author)
  end

  def destroy
    @author.destroy
    respond_with(@author)
  end

  private
    def set_author
      @author = Author.find(params[:id])
    end
end

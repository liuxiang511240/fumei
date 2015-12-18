class SongsController < ApplicationController
  before_filter :set_song, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!, only: [:index, :show]

  respond_to :html

  def index
    @songs = Song.all.paginate(:per_page => 10, :page => params[:page]||1)
  end

  def show
  end

  def new
    @song = Song.new
  end

  def edit
  end

  def create
    @song = Song.new(params[:song])
    @song.save
  end

  def update
    @song.update_attributes(params[:song])
  end

  def destroy
    @song.destroy
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end
end

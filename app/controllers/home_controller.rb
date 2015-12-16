class HomeController < ApplicationController
  def index
    @songs = Song.where('excellent=1')
    @pieces = Piece.where('excellent=1')
    @poetries = Poetry.where('excellent=1')
    @proses = Prose.where('excellent=1')
  end
end

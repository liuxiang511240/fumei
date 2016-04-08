class HomeController < ApplicationController
  skip_before_filter :authenticate_user!

  def index
    @songs = Song.where('excellent=1').order('created_at desc').limit(5)
    @pieces = Piece.where('excellent=1').order('created_at desc').limit(5)
    @poetries = Poetry.where('excellent=1').order('created_at desc').limit(5)
    @proses = Prose.where('excellent=1').order('created_at desc').limit(5)
  end
end

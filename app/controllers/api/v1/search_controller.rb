class Api::V1::SearchController < ApplicationController
  def index
    @songs = Song.where('title Like ?', "%#{params[:query]}")
    @albums = Album.where('title Like ?', "%#{params[:query]}")
    @artists = Artist.where('name Like ?', "%#{params[:query]}")
  end
end

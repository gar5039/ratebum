class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    Album.create(album_params)
    redirect_to root_path
  end

  private

  def album_params
    params.require(:album).permit(:artist, :title, :year)
  end
end

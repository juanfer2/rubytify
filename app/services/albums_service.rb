class AlbumsService
  def initialize
    @artists_service = ArtistsService.new
  end

  def get_albums_by_artist(artist_id)
    artist = @artists_service.get_artist_by_id(artist_id)
    artist.present? ? artist.albums : nil
  end

  def get_album_by_id(id)
    album = RSpotify::Album.find(id)
    album.present? ? album : nil
  end
end
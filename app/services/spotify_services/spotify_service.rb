class SpotifyService
  def initialize
    @artist_service = ArtistsService.new
    @albums_service = AlbumsService.new
  end

  def create_artist(data)
    new_artist = Artist.new(data.except(:genres, :albums))
    new_artist.save
  end

  def create_albums( artist, albums )
    albums.each do |album|
      exist_album = Album.find_by( spotify_id: album[:spotify_id] )
      if !exist_album
        new_album = Album.new(album)
        new_album.artist_id = artist.id
        new_album.save
      end
    end
  end

  def migration_data_by_artist(artists_name)
    artist_exist = Artist.find_by(name: artists_name)
    artist = @artist_service.get_artist_by_name(artists_name) if !artist_exist.present?
    if artist.present?
      new_artist = create_artist(artist)
    end
  end

  def migration_albums_by_artist(artist)
    albums = @albums_service.get_albums_by_artist(artist.spotify_id)
    create_albums(artist, albums)
  end
end
class SongsService
  def initialize
    @albums_service = AlbumsService.new
  end

  def generate_random_number(b)
    rand(0..b)
  end

  def get_songs_by_album_id(album_id)
    album = @albums_service.get_album_by_id(album_id)
    album.present? ? album.songs : nil
  end

  def get_artist_recommendations_by_genres(genres)
    recommendations = RSpotify::Recommendations.generate(seed_genres: [genres])
  end

  def get_songs_random(genres)
    recommendations = get_artist_recommendations_by_genres(genres)

    if recommendations.present?
      size = recommendations.tracks.size - 1
      randon_song = generate_random_number(size)
      recommendations.tracks[randon_song]
    end
  end
end
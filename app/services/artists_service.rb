class ArtistsService
  def get_artist_by_id(id)
    artists  = RSpotify::Artist.find(id)
  end

  def get_artists_by_name(name)
    artists  = RSpotify::Artist.search(name)
  end

  def get_artist_by_name(name)
    artists  = get_artists_by_name(name)
    artists.present? ? artists.first : nil
  end
end
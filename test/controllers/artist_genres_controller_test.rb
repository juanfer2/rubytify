require 'test_helper'

class ArtistGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_genre = artist_genres(:one)
  end

  test "should get index" do
    get artist_genres_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_genre_url
    assert_response :success
  end

  test "should create artist_genre" do
    assert_difference('ArtistGenre.count') do
      post artist_genres_url, params: { artist_genre: { artist_id: @artist_genre.artist_id, genre_id: @artist_genre.genre_id } }
    end

    assert_redirected_to artist_genre_url(ArtistGenre.last)
  end

  test "should show artist_genre" do
    get artist_genre_url(@artist_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_genre_url(@artist_genre)
    assert_response :success
  end

  test "should update artist_genre" do
    patch artist_genre_url(@artist_genre), params: { artist_genre: { artist_id: @artist_genre.artist_id, genre_id: @artist_genre.genre_id } }
    assert_redirected_to artist_genre_url(@artist_genre)
  end

  test "should destroy artist_genre" do
    assert_difference('ArtistGenre.count', -1) do
      delete artist_genre_url(@artist_genre)
    end

    assert_redirected_to artist_genres_url
  end
end

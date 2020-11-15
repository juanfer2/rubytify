require "application_system_test_case"

class ArtistGenresTest < ApplicationSystemTestCase
  setup do
    @artist_genre = artist_genres(:one)
  end

  test "visiting the index" do
    visit artist_genres_url
    assert_selector "h1", text: "Artist Genres"
  end

  test "creating a Artist genre" do
    visit artist_genres_url
    click_on "New Artist Genre"

    fill_in "Artist", with: @artist_genre.artist_id
    fill_in "Genre", with: @artist_genre.genre_id
    click_on "Create Artist genre"

    assert_text "Artist genre was successfully created"
    click_on "Back"
  end

  test "updating a Artist genre" do
    visit artist_genres_url
    click_on "Edit", match: :first

    fill_in "Artist", with: @artist_genre.artist_id
    fill_in "Genre", with: @artist_genre.genre_id
    click_on "Update Artist genre"

    assert_text "Artist genre was successfully updated"
    click_on "Back"
  end

  test "destroying a Artist genre" do
    visit artist_genres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artist genre was successfully destroyed"
  end
end

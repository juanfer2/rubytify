require "application_system_test_case"

class SongsTest < ApplicationSystemTestCase
  setup do
    @song = songs(:one)
  end

  test "visiting the index" do
    visit songs_url
    assert_selector "h1", text: "Songs"
  end

  test "creating a Song" do
    visit songs_url
    click_on "New Song"

    fill_in "Album", with: @song.album_id
    fill_in "Duration ms", with: @song.duration_ms
    check "Explicit" if @song.explicit
    fill_in "Name", with: @song.name
    fill_in "Preview url", with: @song.preview_url
    fill_in "Spotify", with: @song.spotify_id
    fill_in "Spotify url", with: @song.spotify_url
    click_on "Create Song"

    assert_text "Song was successfully created"
    click_on "Back"
  end

  test "updating a Song" do
    visit songs_url
    click_on "Edit", match: :first

    fill_in "Album", with: @song.album_id
    fill_in "Duration ms", with: @song.duration_ms
    check "Explicit" if @song.explicit
    fill_in "Name", with: @song.name
    fill_in "Preview url", with: @song.preview_url
    fill_in "Spotify", with: @song.spotify_id
    fill_in "Spotify url", with: @song.spotify_url
    click_on "Update Song"

    assert_text "Song was successfully updated"
    click_on "Back"
  end

  test "destroying a Song" do
    visit songs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Song was successfully destroyed"
  end
end

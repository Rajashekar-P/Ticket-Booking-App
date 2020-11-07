require "application_system_test_case"

class TheatreMoviesTest < ApplicationSystemTestCase
  setup do
    @theatre_movie = theatre_movies(:one)
  end

  test "visiting the index" do
    visit theatre_movies_url
    assert_selector "h1", text: "Theatre Movies"
  end

  test "creating a Theatre movie" do
    visit theatre_movies_url
    click_on "New Theatre Movie"

    fill_in "Movie", with: @theatre_movie.movie_id
    fill_in "Theatre", with: @theatre_movie.theatre_id
    click_on "Create Theatre movie"

    assert_text "Theatre movie was successfully created"
    click_on "Back"
  end

  test "updating a Theatre movie" do
    visit theatre_movies_url
    click_on "Edit", match: :first

    fill_in "Movie", with: @theatre_movie.movie_id
    fill_in "Theatre", with: @theatre_movie.theatre_id
    click_on "Update Theatre movie"

    assert_text "Theatre movie was successfully updated"
    click_on "Back"
  end

  test "destroying a Theatre movie" do
    visit theatre_movies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Theatre movie was successfully destroyed"
  end
end

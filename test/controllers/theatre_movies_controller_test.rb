require 'test_helper'

class TheatreMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theatre_movie = theatre_movies(:one)
  end

  test "should get index" do
    get theatre_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_theatre_movie_url
    assert_response :success
  end

  test "should create theatre_movie" do
    assert_difference('TheatreMovie.count') do
      post theatre_movies_url, params: { theatre_movie: { movie_id: @theatre_movie.movie_id, theatre_id: @theatre_movie.theatre_id } }
    end

    assert_redirected_to theatre_movie_url(TheatreMovie.last)
  end

  test "should show theatre_movie" do
    get theatre_movie_url(@theatre_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_theatre_movie_url(@theatre_movie)
    assert_response :success
  end

  test "should update theatre_movie" do
    patch theatre_movie_url(@theatre_movie), params: { theatre_movie: { movie_id: @theatre_movie.movie_id, theatre_id: @theatre_movie.theatre_id } }
    assert_redirected_to theatre_movie_url(@theatre_movie)
  end

  test "should destroy theatre_movie" do
    assert_difference('TheatreMovie.count', -1) do
      delete theatre_movie_url(@theatre_movie)
    end

    assert_redirected_to theatre_movies_url
  end
end

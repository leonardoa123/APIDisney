require "test_helper"

class MovieSeriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_series = movie_series(:one)
  end

  test "should get index" do
    get movie_series_url, as: :json
    assert_response :success
  end

  test "should create movie_series" do
    assert_difference("MovieSerie.count") do
      post movie_series_url, params: { movie_series: { character_id: @movie_series.character_id, date: @movie_series.date, rating: @movie_series.rating, title: @movie_series.title } }, as: :json
    end

    assert_response :created
  end

  test "should show movie_series" do
    get movie_series_url(@movie_series), as: :json
    assert_response :success
  end

  test "should update movie_series" do
    patch movie_series_url(@movie_series), params: { movie_series: { character_id: @movie_series.character_id, date: @movie_series.date, rating: @movie_series.rating, title: @movie_series.title } }, as: :json
    assert_response :success
  end

  test "should destroy movie_series" do
    assert_difference("MovieSerie.count", -1) do
      delete movie_series_url(@movie_series), as: :json
    end

    assert_response :no_content
  end
end

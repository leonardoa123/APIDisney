class MovieSeriesController < ApplicationController
  before_action :set_movie_series, only: %i[ show update destroy ]

  # GET /movie_series
  def index
    @movie_series = MovieSerie.all

    render json: @movie_series
  end

  # GET /movie_series/1
  def show
    render json: @movie_series
  end

  # POST /movie_series
  def create
    @movie_series = MovieSerie.new(movie_series_params)

    if @movie_series.save
      render json: @movie_series, status: :created, location: @movie_series
    else
      render json: @movie_series.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_series/1
  def update
    if @movie_series.update(movie_series_params)
      render json: @movie_series
    else
      render json: @movie_series.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movie_series/1
  def destroy
    @movie_series.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_series
      @movie_series = MovieSerie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_series_params
      params.require(:movie_series).permit(:title, :date, :rating, :character_id)
    end
end

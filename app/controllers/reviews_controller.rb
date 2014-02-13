class ReviewsController < ApplicationController
  before_filter :set_movie, only: [:new, :show, :create]

  def create
    review_params = {movie_id: @movie.id}.merge(params[:review])
    @review = Review.new review_params
    if @review.save
      redirect_to movie_path(@movie.id)
    else
      render 'new'
    end
  end

  def show
    @review = Review.find params[:id]
  end

  def new
    @review = Review.new
  end

  private

  def set_movie
    @movie = Tmdb::Movie.detail(params[:movie_id])
  	@trailers = Tmdb::Movie.trailers(params[:movie_id])
  end
end

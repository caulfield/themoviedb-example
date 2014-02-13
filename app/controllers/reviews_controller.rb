class ReviewsController < ApplicationController
  def create
  end

  def show
    @movie = Tmdb::Movie.detail(params[:movie_id])
    @review = Review.find params[:id]
  	@trailers = Tmdb::Movie.trailers(params[:movie_id])
  end
end

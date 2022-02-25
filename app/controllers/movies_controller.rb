class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def create
    @movie = movie.new(movie_params)
    @movie.list = @list
    if @movie.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @movie = movie.find(params[:id])
    @movie.destroy
    redirect_to list_path(@movie.list)
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview)
  end
end

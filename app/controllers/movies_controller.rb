class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end
end

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    # @q = Movie.ransack(params[:q])
    # @people = @q.result(distinct: true)
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end
  
  def search
    @movies = Movie.search(params[:q])
    render "index"
  end
  
  private
  
  # def search_params
  #   search_conditions = %i(
  #     title_cont
  #     )
  #   params.require(:q).permit(search_conditions)
  # end
  
end

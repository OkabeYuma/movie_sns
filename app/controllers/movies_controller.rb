class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    # @q = Movie.ransack(params[:q])
    # @people = @q.result(distinct: true)
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def edit
  end
  
  def search
    @movies = Movie.search(params[:q])
    render "index"
  end
  
  def destroy
    # @movie = Movie.find(params[:id]).delete
    Movie.find(params[:id]).destroy
    flash[:notice] = "映画情報を削除しました。"
    redirect_to movies_path
  end
  
  private
  
  # def search_params
  #   search_conditions = %i(
  #     title_cont
  #     )
  #   params.require(:q).permit(search_conditions)
  # end
  
end

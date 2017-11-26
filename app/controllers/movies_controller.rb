class MoviesController < ApplicationController
  def index
    # @movies = Movie.all
    @movies = Movie.paginate(page: params[:page])
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def edit
  end
  
  def search
    # @movies = Movie.search(params[:q])
    @movies = Movie.paginate(page: params[:page]).search(params[:q])
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

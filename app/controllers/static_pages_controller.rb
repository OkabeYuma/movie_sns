class StaticPagesController < ApplicationController
  
  def home
    @review = current_user.reviews.build if signed_in?
    @feed_items = current_user.feed.paginate(page: params[:page])
  end
  
  def about
  end

  def login
  end

  def signup
  end
  
  def search
  end
  
  def movies
  end
end

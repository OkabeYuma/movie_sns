class ReviewsController < ApplicationController
    #before_action :authenticate_user!
    #before_action :correct_user, only: :destroy
    
    
    def create
        @review = current_user.reviews.build(review_params)
        if @review.save
            flash[:success] = "Micropost created"
            redirect_to root_url
        else
            render 'static_pages/home'
        end
    end
    
    def destroy
        Review.find(params[:id]).delete
        #@review.delete
        redirect_to root_url
        flash[:notice] = "Micropost created"
    end
    
    private
    
    def review_params
        params.require(:review).permit(:content)
    end
    
    def correct_user
        @review = current_user.reviews.find_by(id: params[:id])
        redirect_to root_url if @micropost.nil?
    end
    
end
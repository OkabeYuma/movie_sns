class UsersController < ApplicationController
  
  before_action :authenticate_user!, :except=>[:show]
  
  def index
     @users = User.all 
  end
  
  def show
    @user = User.find(params[:id])
    # @user = User.find(1)
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Movie SNS!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private
  
  def user_params
    params.require(:use).permit(:name, :email, :password, :password_confirmation)
  end
  
end

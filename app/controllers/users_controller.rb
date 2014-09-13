class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      flash[:notice] = "User successfully created, please log in."
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong!"
      render 'new'
    end
  end
end

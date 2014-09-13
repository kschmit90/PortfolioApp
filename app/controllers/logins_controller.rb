class LoginsController < ApplicationController
  skip_before_filter :authorize, :only => [:new, :create]
  
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
      flash[:notice] = "Log in Successful!"
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:alert] = "Incorrect Log In Information."
      render 'new'
    end
  end
  
  def destroy
    flash[:notice] = "Logged out."
    session[:user_id] = nil # Could also call `reset_session` to clear the entire session.
    redirect_to root_path
  end
end

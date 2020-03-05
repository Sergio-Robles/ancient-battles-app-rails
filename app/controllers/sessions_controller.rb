class SessionsController < ApplicationController
  
  # before_action :current_user_exists 

  def login
    
  end

  def create
    user = User.find_by(name: params[:name])
    # byebug
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      # byebug
      redirect_to user_path(user)
    else
      flash[:error] = "Name/Password is wrong"
      render :new
    end
  end

  def destroy
    session.delete :current_user_id
    @current_user = nil
    redirect_to '/login'
  end

end

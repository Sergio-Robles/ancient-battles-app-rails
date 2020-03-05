class SessionsController < ApplicationController
  
  # before_action :current_user_exists 

  def login
    
  end
  
  def new
  end 

  def create
    user = User.find_by(name: params[:name])
    
    if user.authenticate(params[:password])
      session[:current_user_id] = user.id
      # byebug
      redirect_to new_army_path
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

class UsersController < ApplicationController

before_action :current_user_exists, only: [:show]

def index 
    @users = User.all
end

def new 
    @user = User.new
end

def show 
    @current_user = User.find(params[:id])
end 

def create 
    @user = User.create(user_params)
    redirect_to user_path(@user)
end

def edit 
    @current_user = User.find(params[:id])
end

def update 
    @current_user = User.find(params[:id])
    @current_user.update(user_params)
    redirect_to current_user_path(@current_user)
end

def destroy
    @current_user = User.find(params[:id]).destroy
    redirect_to login_path
end 


private 

def user_params
    params.require(:user).permit(:name, :password)
end

def require_login
    return head(:forbidden) unless session.include? :current_user_id
end

end

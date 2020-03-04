cclass UsersController < ApplicationController

before_action :current_user_exists, only: [:show]

def index 
    @users = User.all
end

def new 
    @user = User.new
end

def show 
end 

def create 
    @user = User.create(user_params)
    redirect_to user_path(@user)
end


private 

def user_params
    params.require(:user).permit(:name)
end

def require_login
    return head(:forbidden) unless session.include? :current_user_id
end
end

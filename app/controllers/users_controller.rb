class UsersController < ApplicationController

before_action :require_login, only: [:show]
before_action :current_user_exists, only: [:show]

def index 
    @users = User.all
end


def show 
    @user = User.find(params[:id])

end 

def new 
    @user = User.new
end 

def create
    @user = User.create(user_params) 
    session[:current_user_id] = @user.id
    redirect_to new_army_path
    
end 

private 

def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
end

def require_login
    return head(:forbidden) unless session.include? :current_user_id
end
end

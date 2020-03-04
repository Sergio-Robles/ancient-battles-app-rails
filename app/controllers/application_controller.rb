class ApplicationController < ActionController::Base

    private
   
    def current_user_exists
       if @current_user = User.find_by(id: session[:current_user_id])
            @current_user
       else
           redirect_to '/login' 
       end
    end
   end
   
   

class ArmiesController < ApplicationController

    def index 
        @armies = Army.all 
    end 
    
    def new 
        @army = Army.new 
    end 

    def create
        army = Army.create(army_params)
        army.user_id = session[:current_user_id]
        if army.valid?
            army.save
            redirect_to army_path(army)
        else
            flash[:errors] = army.errors.full_messages
            redirect_to new_army_path
        end
    end

    def show 
        @army = Army.find(params[:id])
    end 


    # def edit 
    #     @army = Army.find(params[:id])
    #     redirect_to edit_army_unit_path
    # end 

    # def update 
    #     @army = Army.find(params[:id])
    #     @army.update(army_params)
         
        
    # end

    def destroy
        Army.find(params[:id]).destroy
    end
    
    private 

    def army_params
        params.require(:army).permit(:name, unit_ids: [])
    end 


end

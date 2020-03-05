class ArmiesController < ApplicationController

    def index 
        @armies = Army.all 
    end 
    
    def new 
        @army = Army.new 
    end 

    def create 
        @army = Army.create(army_params)
        redirect_to new_army_unit_path
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
        params.require(:army).permit(:name, :current_user)
    end 


end

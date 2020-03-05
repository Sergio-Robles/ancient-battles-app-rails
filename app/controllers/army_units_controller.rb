class ArmyUnitsController < ApplicationController


    def new 
        @army_unit = ArmyUnit.new 
        
    end 

    def create 
        @army_unit = ArmyUnit.create(army_unit_params)
        redirect_to army_unit(@army_unit)
    end 

    def show 
        @army_unit = ArmyUnit.find(params[:id])
    end 

    def edit 
        @army_unit = ArmyUnit.find(params[:id]) 
    end 

    def update 
        @army_unit = ArmyUnit.find(params[:id])
        @army_unit.update(army_unit_params)
        #redirect_to 
    end 


    private 

    def army_unit_params 
        params.require(:army_unit).permit(:army_id, :unit_id)
    end 






end

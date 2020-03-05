class ArmyUnitsController < ApplicationController


    def new 
        @army_unit = ArmyUnit.new 
        unit_type_general = UnitType.find(1)
        @general_units = Unit.all.select{|u| u.unit_type == unit_type_general }
        unit_type_infantry = UnitType.find(2)
        @infantry_units = Unit.all.select{|u| u.unit_type == unit_type_infantry }
        unit_type_cavalry = UnitType.find(3)
        @cavalry_units = Unit.all.select{|u| u.unit_type == unit_type_cavalry }
        unit_type_missile = UnitType.find(4) 
        @missile_units = Unit.all.select{|u| u.unit_type == unit_type_missile }
        unit_type_artillery = UnitType.find(5) 
        @artillery_units = Unit.all.select{|u| u.unit_type == unit_type_artillery }
    end 
    
    def create 
        @army_unit = ArmyUnit.create(army_unit_params)
        
        
        #LOOK AT NESTED ROUTING?
        redirect_to army_unit_path
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
        # redirect_to
    end 


    private 

    def army_unit_params 
        params.require(:army_unit).permit(:army_id, :unit_ids)
    end 






end

class ArmiesController < ApplicationController

    def index 
        @armies = Army.all 
    end 
    
    def new 
        @army = Army.new
        # unit_type_general = UnitType.find(1)
        # @general_units = Unit.all.select{|u| u.unit_type == unit_type_general }
        # unit_type_infantry = UnitType.find(2)
        # @infantry_units = Unit.all.select{|u| u.unit_type == unit_type_infantry }
        # unit_type_cavalry = UnitType.find(3)
        # @cavalry_units = Unit.all.select{|u| u.unit_type == unit_type_cavalry }
        # unit_type_missile = UnitType.find(4) 
        # @missile_units = Unit.all.select{|u| u.unit_type == unit_type_missile }
        # unit_type_artillery = UnitType.find(5) 
        # @artillery_units = Unit.all.select{|u| u.unit_type == unit_type_artillery }
    end 

    def create 
        # @army = Army.create(army_params)
        # byebug
        # @army.user_id = session[:current_user_id]
        army = Army.create(name: params[:army][:name])
        
        unit_ids = params[:army][:unit_ids].select { |id| id != "" }
        unit_ids.each do |id|
        ArmyUnit.create(army_id: army.id, unit_id: id)
        end 
        # redirect_to army_path(army)
    
        
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
        params.require(:army).permit(:name, :unit_ids)
    end 


end

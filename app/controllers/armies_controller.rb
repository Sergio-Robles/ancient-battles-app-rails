class ArmiesController < ApplicationController

    def index 
        @armies = Army.all 
        @users = User.all
    end 
    
    def new 
        @army = Army.new 
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

    def show 
        @army = Army.find(params[:id])
        @user = @current_user
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


    def edit 
        @army = Army.find(params[:id])
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
        render 'edit'
    end 

    def update 
        @army = Army.find(params[:id])
        @army.update(army_params)
         redirect_to user_path
        
    end

    def destroy
        Army.find(params[:id]).destroy
    end
    
    private 

    def army_params
        params.require(:army).permit(:name, unit_ids: [])
    end 


end

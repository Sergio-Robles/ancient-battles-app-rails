class UnitsController < ApplicationController

    
    def new 
        @unit = Unit.new 
    end 

    def create 
        @unit = Unit.create(unit_params)
    end 



    private 

    def unit_params 
        params.require(:unit).permit(:name, :size, :price, :attack, :defence, :unit_type_id)
    end 
end

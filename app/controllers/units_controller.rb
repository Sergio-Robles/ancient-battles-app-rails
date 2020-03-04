class UnitsController < ApplicationController

    def index
        @units = Unit.all
    end
    
    def new 
        @unit = Unit.new 
    end 

    def generals
        @units = Unit.all_the_generals       
    end

    def infantries 
        @units = Unit.all_the_infantry
    end

    def cavalries 
        @units = Unit.all_the_cavalry
    end

    def missiles
       @units = Unit.all_the_missile  
    end

    def artilleries
        @units = Unit.all_the_artillery
    end

    def create 
        @unit = Unit.create(unit_params)
    end 



    private 

    def unit_params 
        params.require(:unit).permit(:name, :size, :price, :attack, :defence, :unit_type_id)
    end 
end

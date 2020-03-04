class Unit < ApplicationRecord
belongs_to :unit_type 
has_many :army_units 
has_many :armies, through: :army_units 


    def unit_stats 
        "#{name} - Price: #{price} - Attack: #{attack} - Defence: #{defence}"
    end 

    def self.all_the_generals 
        self.all.select{|u| u[:unit_type_id]==1}
    end

    def self.all_the_infantry 
        self.all.select{|u| u[:unit_type_id]==2}
    end

    def self.all_the_cavalry 
        self.all.select{|u| u[:unit_type_id]==3}
    end

    def self.all_the_missile 
        self.all.select{|u| u[:unit_type_id]==4}
    end

    def self.all_the_artillery
        self.all.select{|u| u[:unit_type_id]==5}
    end

end

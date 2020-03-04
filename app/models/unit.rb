class Unit < ApplicationRecord
belongs_to :unit_type 
has_many :army_units 
has_many :armies, through: :army_units 


    def unit_stats 
        "#{name} - Price: #{price} - Attack: #{attack} - Defence: #{defence}"
    end 




end

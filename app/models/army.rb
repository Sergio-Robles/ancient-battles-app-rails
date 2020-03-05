class Army < ApplicationRecord
belongs_to :user 
has_many :army_units
has_many :units, through: :army_units


end

class User < ApplicationRecord
has_many :armies 

has_secure_password

validates :name, presence: true 
end

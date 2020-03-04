class User < ApplicationRecord
has_many :armies 

has_secure_password
end

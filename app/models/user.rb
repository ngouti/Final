class User < ApplicationRecord
    has_secure_password
    
    has_many :pictures
    has_many :comments


    validates :username, length: {minimum: 4}
    validates :username, uniqueness: true
    validates :email, uniqueness: true
    validates :password, length: {minimum: 4}


end

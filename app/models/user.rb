class User < ApplicationRecord
    has_many :comments, dependent: :destroy
	has_many :attendances, dependent: :destroy
	has_many :events, through: :attendances

	has_secure_password 
	validates :email, presence: true, uniqueness: true
	validates :user_name, presence: true, uniqueness: true 	
end

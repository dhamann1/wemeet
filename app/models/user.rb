class User < ApplicationRecord
	has_many :attendances, dependent: :destroy	
	has_many :events, dependent: :destroy
    has_many :comments, dependent: :destroy
	has_many :events_attending, through: :attendances, source: :event, dependent: :destroy

	has_secure_password 
	validates :email, presence: true, uniqueness: true
	validates :user_name, presence: true, uniqueness: true 	
end

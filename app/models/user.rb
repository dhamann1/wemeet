class User < ApplicationRecord
	has_attached_file :image, styles: { small: "64x64", med: "200x200", large: "300x300" }	
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/	
	has_many :attendances, dependent: :destroy	
	has_many :events, dependent: :destroy
    has_many :comments, dependent: :destroy
	has_many :events_attending, through: :attendances, source: :event, dependent: :destroy

	has_secure_password 
	validates :email, presence: true, uniqueness: true
	validates :user_name, presence: true, uniqueness: true 	
end

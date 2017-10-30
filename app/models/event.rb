class Event < ApplicationRecord
    has_many :comments, dependent: :destroy
	has_many :attendances, dependent: :destroy
	has_many :users, through: :attendances 
    enum type: [:tech, :food, :fitness, :art]
end

class Event < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :attendances, dependent: :destroy
	has_many :users, through: :attendances, dependent: :destroy
    enum category: [:tech, :food, :fitness, :art]

end

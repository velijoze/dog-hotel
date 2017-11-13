class DogRegistration < ApplicationRecord
	has_many :users

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :dog_name, presence: true
	validates :dog_sex, presence: true
	validates :dog_breed, presence: true
end

class Library < ActiveRecord::Base

	validates :branch_name, presence: true
	validates :phone_number, presence: true
	validates :address, presence: true

end
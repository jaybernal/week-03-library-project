class Book < ActiveRecord::Base

	validates :title, presence: true
	validates :author, presence: true
	validates :isbn, presence: true

end
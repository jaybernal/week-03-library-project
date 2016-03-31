class Book < ActiveRecord::Base

	validates :title, presence: true
	validates :Author, presence: true
	validates :ISBN, presence: true

end

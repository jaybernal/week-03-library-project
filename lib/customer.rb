class Customer < ActiveRecord::Base

		validates :customer_name, presence: true
		validates :customer_email, presence: true
end
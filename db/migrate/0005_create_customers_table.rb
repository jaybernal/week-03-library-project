class CreateCustomersTable < ActiveRecord::Migration

	def change
		create_table 	:customers do |t|
			t.string 		:customer_name
			t.string 		:customer_email
		end
	end
end


class CreateLibrariesTable < ActiveRecord::Migrate

	def change
		create_table 	:libraries do |t|
			t.string 		:branch_name
			t.string 		:address
			t.interger 	:phone_number
	end

end
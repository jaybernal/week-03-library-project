class CreateStaffMembersTable < ActiveRecord::Migration

	def change
		create_table 	:staff_members do |t|
			t.string 		:staff_name
			t.string 		:staff_email
		end
	end

end
class AddLibraryStaffAssociations < ActiveRecord::Migration

	def change
		add_column :staff_members, :library_id, :integer
	end
end
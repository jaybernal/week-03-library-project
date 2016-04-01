class ChangeLibraryPhoneToString < ActiveRecord::Migration

	def change
		rename_column :libraries, :phone_number, :string
	end

end
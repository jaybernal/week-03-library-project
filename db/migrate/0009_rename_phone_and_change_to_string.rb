class RenamePhoneAndChangeToString < ActiveRecord::Migration

	def change
		rename_column :libraries, :string, :phone_number
		change_column :libraries, :phone_number, :string
	end

end
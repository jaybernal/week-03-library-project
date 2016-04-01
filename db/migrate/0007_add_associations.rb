class AddAssociations < ActiveRecord::Migration

	def change
		add_column :books, :library_id, :integer
		add_column :books, :customers_id, :integer
	end
	
end
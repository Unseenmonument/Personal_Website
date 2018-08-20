class RemoveWebTable < ActiveRecord::Migration[5.1]
  	def up
		drop_table :web_employers
	end

	def down
		raise ActiveRecord::IrreversibleMigration
	end
end

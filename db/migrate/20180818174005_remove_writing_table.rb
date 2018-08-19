class RemoveWritingTable < ActiveRecord::Migration[5.1]
    def up
		drop_table :writing_helps
	end

	def down
		raise ActiveRecord::IrreversibleMigration
	end

end

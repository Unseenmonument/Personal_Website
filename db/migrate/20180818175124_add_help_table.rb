class AddHelpTable < ActiveRecord::Migration[5.1]
	def change
		create_table :help do |t|
			t.string :name
			t.string :project
			t.string :medium
			t.string :genre
			t.text :comment
			t.string :contact
			t.string :state

			t.timestamps
		end
  	end
end

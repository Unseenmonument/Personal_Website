class CreateHelps < ActiveRecord::Migration[5.1]
  def change
    create_table :helps do |t|
      t.string :Name
      t.string :company
      t.string :project
      t.string :genre
      t.string :state
      t.string :contact
      t.text :comments

      t.timestamps
    end
  end
end

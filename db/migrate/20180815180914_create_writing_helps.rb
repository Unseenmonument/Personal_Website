class CreateWritingHelps < ActiveRecord::Migration[5.1]
  def change
    create_table :writing_helps do |t|
      t.string :name
      t.string :project
      t.string :medium
      t.string :genre
      t.string :comment
      t.string :contact
      t.string :state

      t.timestamps
    end
  end
end

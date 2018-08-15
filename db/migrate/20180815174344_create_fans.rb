class CreateFans < ActiveRecord::Migration[5.1]
  def change
    create_table :fans do |t|
      t.string :Name
      t.string :contact
      t.string :state
      t.string :comment
      t.string :book
      t.string :review
      t.string :stars

      t.timestamps
    end
  end
end

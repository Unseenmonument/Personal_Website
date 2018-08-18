class CreateWebemployers < ActiveRecord::Migration[5.1]
  def change
    create_table :webemployers do |t|
      t.string :company
      t.string :state
      t.string :reason
      t.string :contact
      t.string :comments

      t.timestamps
    end
  end
end

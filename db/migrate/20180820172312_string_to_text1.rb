class StringToText1 < ActiveRecord::Migration[5.1]
  
  def change
  	remove_column :fans, :comment, :string
  	remove_column :webemployers, :comments, :string
  
  	add_column :fans, :comment, :text
  	add_column :webemployers, :comments, :text
  end

end

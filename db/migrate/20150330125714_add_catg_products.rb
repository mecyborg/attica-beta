class AddCatgProducts < ActiveRecord::Migration
  def up
  	add_column :products, :category, :integer
  end
  def down
  	remove_column :products, :category, :integer
  end
end

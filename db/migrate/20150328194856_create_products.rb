class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.decimal :price
      t.integer :discount
      t.text :description
      t.boolean :instock
      
      t.timestamps null: false
    end
  end
end

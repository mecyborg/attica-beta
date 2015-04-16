class CreateWishlists < ActiveRecord::Migration
  def up
    create_table :wishlists do |t|
      t.string :username
      t.integer :itemid
      t.timestamps null: false
    end
  end
end

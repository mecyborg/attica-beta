class CreateCatgs < ActiveRecord::Migration
  def change
    create_table :catgs do |t|
      t.text :name
      t.integer :nop

      t.timestamps null: false
    end
  end
end

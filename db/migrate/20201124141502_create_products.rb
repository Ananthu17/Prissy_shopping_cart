class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :colour
      t.text :highlights
      t.text :specifications
      t.integer :count
      t.belongs_to :subcategory, foreign_key: true
      t.belongs_to :brand, foreign_key: true

      t.timestamps
    end
    add_index :products, :name, unique: true
  end
end

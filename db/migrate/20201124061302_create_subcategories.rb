class CreateSubcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.text :description
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
    add_index :subcategories, :name, unique: true
  end
end

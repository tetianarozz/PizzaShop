class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.float :price, precision: 8, scale: 2
      t.string :title
      t.text :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :cart, null: false, foreign_key: true
      t.string :user_name
      t.integer :user_number
      t.string :user_address

      t.timestamps
    end
  end
end

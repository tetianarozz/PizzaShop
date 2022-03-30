class CreatePromoCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :promo_codes do |t|
      t.integer :discount
      t.belongs_to :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePromoCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :promo_codes do |t|
      t.integer :discount

      t.timestamps
    end
  end
end

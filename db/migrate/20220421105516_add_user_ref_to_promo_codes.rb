class AddUserRefToPromoCodes < ActiveRecord::Migration[6.1]
  def change
    add_reference :promo_codes, :user, null: false, foreign_key: true
  end
end

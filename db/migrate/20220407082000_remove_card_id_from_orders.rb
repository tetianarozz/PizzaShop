class RemoveCardIdFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_reference :orders, :cart, index: true, foreign_key: true
  end
end

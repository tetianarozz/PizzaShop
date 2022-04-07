class RemoveCards < ActiveRecord::Migration[6.1]
  def change
    drop_table :carts do |t|
      t.timestamps
    end
  end
end

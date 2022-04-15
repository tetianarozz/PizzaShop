class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :login
      t.integer :role, default: 0

      t.timestamps
    end
  end
end

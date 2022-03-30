class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :login
      t.string :password_digest
      t.integer :role

      t.timestamps
    end
  end
end

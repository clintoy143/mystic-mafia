class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :admin_name
      t.string :role
      t.string :password_digest

      t.timestamps
    end
  end
end

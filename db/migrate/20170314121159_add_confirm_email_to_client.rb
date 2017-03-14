class AddConfirmEmailToClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :confirm_email, :string 
  end
end

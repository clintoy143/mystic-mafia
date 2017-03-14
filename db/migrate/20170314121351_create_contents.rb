class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :heading
      t.string :tagline
      t.text :message_confirmation

      t.timestamps
    end
  end
end

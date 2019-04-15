class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :google_token
      t.string :email
      t.text :google_client_id

      t.timestamps
    end
  end
end

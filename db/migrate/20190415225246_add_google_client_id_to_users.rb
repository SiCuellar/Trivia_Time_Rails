class AddGoogleClientIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :google_client_id, :string
  end
end

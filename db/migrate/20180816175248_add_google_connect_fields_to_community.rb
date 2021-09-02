class AddGoogleConnectFieldsToCommunity < ActiveRecord::Migration[5.1]
  def change
    add_column :communities, :google_connect_secret, :string
    add_column :communities, :google_connect_id, :string
    add_column :communities, :google_connect_enabled, :boolean, default: true
    add_column :people, :google_id, :string
  end
end

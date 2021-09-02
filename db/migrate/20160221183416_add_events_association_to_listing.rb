class AddEventsAssociationToListing < ActiveRecord::Migration
  def self.up
      add_column :events, :listing_id, :integer
      add_index 'events', ['listing_id'], :name => 'index_listing_id' 
  end

  def self.down
      remove_column :events, :listing_id
  end
end

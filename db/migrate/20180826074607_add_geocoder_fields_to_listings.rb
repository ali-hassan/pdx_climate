class AddGeocoderFieldsToListings < ActiveRecord::Migration[5.1]
  def self.up
    add_column :listings, :latitude, :float
    add_column :listings, :longitude, :float
    Location.all.map do |l|
      if l.listing.present?
        l.listing.update latitude: l.latitude, longitude: l.longitude
      end
    end
  end

  def self.down
    remove_column :listings, :latitude, :float
    remove_column :listings, :longitude, :float
  end
end

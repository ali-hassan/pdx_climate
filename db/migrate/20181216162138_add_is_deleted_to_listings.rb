class AddIsDeletedToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :is_deleted, :boolean, default: false
  end
end

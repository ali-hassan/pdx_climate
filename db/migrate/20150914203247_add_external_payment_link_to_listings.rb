class AddExternalPaymentLinkToListings < ActiveRecord::Migration
  def change
    add_column :listings, :external_payment_link, :string, limit:256, null: true
  end
end

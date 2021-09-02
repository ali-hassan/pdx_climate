class ChangeDataTypeForExternalPaymentLink < ActiveRecord::Migration
  def change
    change_column :listings, :external_payment_link, :text
  end
end

class AddIsPaymentSetupNotificationDismissedToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :is_payment_setup_notification_dismissed, :boolean, default: false
  end
end
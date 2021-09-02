class CreateUnavailableDates < ActiveRecord::Migration[5.1]
  def change
    create_table :unavailable_dates do |t|
      t.date :date
      t.integer :listing_id

      t.timestamps
    end
  end
end

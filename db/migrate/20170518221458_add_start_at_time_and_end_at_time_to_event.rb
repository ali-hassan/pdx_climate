class AddStartAtTimeAndEndAtTimeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :start_at_time, :time
    add_column :events, :end_at_time, :time
  end
end

class AddEventRuleToEvent < ActiveRecord::Migration
  def change
    add_column :events, :event_rule_hash, :text
  end
end
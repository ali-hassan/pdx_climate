# == Schema Information
#
# Table name: events
#
#  id              :integer          not null, primary key
#  start_at        :datetime
#  end_at          :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  listing_id      :integer
#  start_at_time   :time
#  end_at_time     :time
#  event_rule_hash :text(65535)
#
# Indexes
#
#  index_listing_id  (listing_id)
#

class Event < ActiveRecord::Base

  belongs_to :listing

  validates :start_at, presence: true
  #validates :end_at, presence: true
  
  #validates_date :end_at, on_or_after: :start_at

  default_scope {order('start_at DESC')}

  after_save :set_listing_delta_flag
  after_destroy :set_listing_delta_flag

  serialize :event_rule_hash, IceCube::Schedule

  def start_at=(start_at)
    write_attribute(:start_at, "#{start_at[3..4]}/#{start_at[0..1]}/#{start_at[6..9]}")
  end

  def end_at=(end_at)
    write_attribute(:end_at, "#{end_at[3..4]}/#{end_at[0..1]}/#{end_at[6..9]}")
  end

  private

  def set_listing_delta_flag
    if listing.delta != true
      listing.delta = true
      listing.save
    end
  end
  
  scope :current, lambda{ where(['end_at > ?', Time.now]) }

end
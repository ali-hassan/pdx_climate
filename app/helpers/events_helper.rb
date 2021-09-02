# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  start_at   :datetime
#  end_at     :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  listing_id :integer
#
# Indexes
#
#  index_listing_id  (listing_id)
#

module EventsHelper
end

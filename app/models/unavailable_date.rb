# == Schema Information
#
# Table name: unavailable_dates
#
#  id         :bigint           not null, primary key
#  date       :date
#  listing_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UnavailableDate < ApplicationRecord
  belongs_to :listing

  def string_date
    return "'#{self.date}'"
  end
end

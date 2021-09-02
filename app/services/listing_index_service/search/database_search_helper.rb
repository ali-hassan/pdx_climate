module ListingIndexService::Search::DatabaseSearchHelper

  module_function

  def success_result(count, listings, includes, distances = {})
    # listings = exculde_passed_events_listings(listings)
    converted_listings = listings.map do |listing|
      distance_hash = distances[listing.id] || {}
      ListingIndexService::Search::Converters.listing_hash(listing, includes, distance_hash)
    end
    Result::Success.new({count: count, listings: converted_listings})
  end

  def exculde_passed_events_listings(listings)
    new_listings = []
    listings.each do |listing|
      if listing.event.present? && listing.event.try(:end_at).present? && listing.event.try(:end_at_time).present?
        end_at      = listing.event.end_at.to_date
        end_at_time = listing.event.try(:end_at_time).strftime("%H:%M:%S")
        today_date  = Time.current.to_date
        if end_at && end_at > today_date or ( end_at.to_date == today_date and end_at_time >= Time.now.in_time_zone("Pacific Time (US & Canada)").strftime("%H:%M:%S"))
          new_listings << listing
        end
      else
        new_listings << listing
      end
    end
    new_listings
  end

  ## Script to Delete passed events on Daily basis
  # def script_to_delete_exculded_passed_events_listings(listings)
  #   new_listings = []
  #   listings.each do |listing|
  #     if listing.event.present? && listing.event.try(:end_at).present? && listing.event.try(:end_at_time).present?
  #       end_at      = listing.event.end_at.to_date
  #       end_at_time = listing.event.try(:end_at_time).strftime("%H:%M:%S")
  #       today_date  = Time.current.to_date
  #       if end_at && end_at > today_date or ( end_at.to_date == today_date and end_at_time >= Time.now.in_time_zone("Pacific Time (US & Canada)").strftime("%H:%M:%S"))
  #         new_listings << listing
  #       else
  #         listing.delete
  #       end
  #     else
  #       new_listings << listing
  #     end
  #   end
  #   new_listings
  # end

  def fetch_from_db(community_id:, search:, included_models:, includes:)
    where_opts = HashUtils.compact(
      {
        community_id: community_id,
        author_id: search[:author_id],
        event_id: search[:event_id],
        deleted: 0,
        listing_shape_id: Maybe(search[:listing_shape_ids]).or_else(nil)
      })

    if search[:distance_max].present? && search[:address].present?
      query = Listing.near(search[:address], search[:distance_max], :unit => :kilometers, :order => :distance)
                  .includes(included_models)
                  .paginate(per_page: search[:per_page], page: search[:page])

    else
      query = Listing
              .where(where_opts)
              .includes(included_models)
              .order( search[:upcoming_events] ? 'events.start_at' : 'listings.sort_date DESC' )
              .paginate(per_page: search[:per_page], page: search[:page])
    end

    if search[:upcoming_events]
      query = query.with_events
    end

    listings =
      if search[:include_closed]
        query
      else
        query.currently_open
      end

    success_result(listings.total_entries, listings, includes)
  end

  # TODO: This should probably be rethought when the Indexer and the
  # new Search API is finished and in use
  def needs_db_query?(search)
    search[:author_id].present? || search[:include_closed] == true
  end

  def needs_search?(search)
    [
      :keywords,
      :latitude,
      :longitude,
      :distance_max,
      :sort,
      :listing_shape_id,
      :listing_shape_ids,
      :categories,
      :fields,
      :price_cents
    ].any? { |field| search[field].present? }
  end

end

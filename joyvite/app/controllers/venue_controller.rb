class VenueController < ApplicationController

  def search
    query = params[:query]

    @venues = Venue
    #@venues = @venues.available_from(query[:date_from]) if query.key ? :date_from
    #@venues = @venues.available_to(query[:date_to]) if query.key ? :date_to
    @venues = @venues.costs_less_than(query[:budget].to_i) unless query[:budget].blank?

    if @venues == Venue
      @venues = Venue.all
    end
  end

  private
  def parse_location location_string
    location_string.strip!
    location = {}
    postal = location_string.match(/[0-9]{5}(?:-?[0-9]{4})?/)
    if postal
      location[:postal_code] = postal[0]
    else
      state = location_string.match(/(?:^|\s+|,\s*)([a-zA-Z]{2})$/)
      if state
        location[:state] = state[1]
        city_end = state.begin(0)
        location[:city] = location_string[0, city_end] if city_end >= 1
      else
        location[:city] = location_string
      end
    end
    return location
  end
end

class VenueController < ApplicationController

  def search
    query = params[:query]
    location = parse_location query[:location]

    @location = location
    if location.keys.length > 0
      @venues = Venue
      @venues = @venues.by_city(location[:city]) if location.key? :city
      @venues = @venues.by_state(location[:state]) if location.key? :state
      @venues = @venues.by_postal_code(location[:postal_code]) if location.key? :postal_code
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

class VenuesController < ApplicationController

  def show
    @venue = Venue.find(params[:id])
  end

  def search
    query = params[:query]

    @outside_counts = {}
    @venues = Venue
    if not query[:budget].blank?
      budget = query[:budget].to_i
      @venues = @venues.cost_within_budget(budget)
      @outside_counts[:budget] = "#{Venue.where('price > ?', budget).count} outside your budget"
    end

    @venues = @venues.order('price')
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

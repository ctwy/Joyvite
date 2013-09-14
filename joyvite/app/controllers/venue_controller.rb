class VenueController < ApplicationController

  def search
    query = params[:query]
    @location = query[:location]
  end

end

class VenueFeature < ActiveRecord::Base
  attr_accessible :icon_filename, :name
  has_and_belongs_to_many :venues
end

class Venue < ActiveRecord::Base
  attr_accessible :name, :street_1, :street_2, :city, :state, :postal_code, :website, :contact_phone, :contact_email

  scope :by_city, -> (city) { where(city: city) }
  scope :by_state, -> (state) { where(state: state) }
  scope :by_postal_code, -> (postal_code) { where(postal_code: postal_code) }
end

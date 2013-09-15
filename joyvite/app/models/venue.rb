class Venue < ActiveRecord::Base
  attr_accessible :name, :street_1, :street_2, :city, :state, :postal_code, :website, :contact_phone, :contact_email, :price, :review_count, :max_people, :rating

  has_and_belongs_to_many :venue_features
  has_many :images

  scope :cost_within_budget, -> (budget) { where(:price => 0..budget) }
end

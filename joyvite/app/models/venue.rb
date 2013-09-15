class Venue < ActiveRecord::Base
  attr_accessible :name, :street_1, :street_2, :city, :state, :postal_code, :website, :contact_phone, :contact_email, :budget

  #scope :available_from, -> (date) { where( city) }
  #scope :available_to, -> (date) { where(state: state) }
  scope :costs_less_than, -> (budget) { where(:price => 0..budget) }
end

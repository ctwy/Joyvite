class AddRatingToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :rating, :integer
  end
end

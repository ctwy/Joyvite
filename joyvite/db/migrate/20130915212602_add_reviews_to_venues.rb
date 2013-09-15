class AddReviewsToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :review_count, :integer
    add_column :venues, :review_text, :string
  end
end

class AddMaxPeopleToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :max_people, :integer
  end
end

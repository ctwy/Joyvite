class CreateVenueFeatures < ActiveRecord::Migration
  def change
    create_table :venue_features do |t|
      t.string :name
      t.string :icon_filename

      t.timestamps
    end
  end
end

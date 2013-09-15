class AddVenueFeatureRelationship < ActiveRecord::Migration
  def up
    create_table :venues_venue_features, id: false do |t|
      t.integer :venue_id
      t.integer :venue_feature_id
    end
  end

  def down
    drop_table :venues_venue_features
  end
end

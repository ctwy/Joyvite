class MakeVenueFeaturesNonNullable < ActiveRecord::Migration
  def change
    change_column :venue_features, :name, :string, :null => false
    change_column :venue_features, :icon_filename, :string, :null => false
    change_column :venues_venue_features, :venue_id, :integer, :null => false
    change_column :venues_venue_features, :venue_feature_id, :integer, :null => false
  end
end

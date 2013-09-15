class AddCostToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :price, :decimal, :precision => 8, :scale => 2
  end
end

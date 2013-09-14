class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|

      t.string :name, null: false
      t.string :street_1, null: false
      t.string :street_2, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :postal_code, null: false
      t.string :website
      t.string :contact_phone
      t.string :contact_email

      t.timestamps
    end
  end
end

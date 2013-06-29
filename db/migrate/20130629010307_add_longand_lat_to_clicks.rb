class AddLongandLatToClicks < ActiveRecord::Migration
  def change
    add_column :clicks, :Longitude, :decimal
    add_column :clicks, :Latitude, :decimal
  end
end

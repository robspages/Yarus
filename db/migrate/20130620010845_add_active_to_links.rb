class AddActiveToLinks < ActiveRecord::Migration
  def change
    add_column :links, :active, :boolean
  end
end

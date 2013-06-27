class CreateAnalytics < ActiveRecord::Migration
  def change
    create_table :analytics do |t|
      t.integer :link_id
      t.integer :short_url_id
      t.integer :clickcount

      t.timestamps
    end
  end
end

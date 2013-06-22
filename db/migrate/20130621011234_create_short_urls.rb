class CreateShortUrls < ActiveRecord::Migration
  def change
    create_table :short_urls do |t|
      t.string :hash
      t.boolean :active

      t.timestamps
    end
  end
end

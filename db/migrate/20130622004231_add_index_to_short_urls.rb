class AddIndexToShortUrls < ActiveRecord::Migration
  def change
  	add_index(:short_urls, :shortcode, {:unique => true })
  end
end

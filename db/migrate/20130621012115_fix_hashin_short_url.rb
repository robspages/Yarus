class FixHashinShortUrl < ActiveRecord::Migration
  def up
  	rename_column :short_urls, :hash, :shortcode
  end

  def down
  end
end

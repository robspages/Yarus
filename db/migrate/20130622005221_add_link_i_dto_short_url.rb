class AddLinkIDtoShortUrl < ActiveRecord::Migration
  def up
     add_column :short_urls, :link_id, :integer
  end

  def down
  end
end

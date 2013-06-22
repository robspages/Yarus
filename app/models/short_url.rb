class ShortUrl < ActiveRecord::Base
  attr_accessible :active,:link_id, :shortcode
  belongs_to      :link
end

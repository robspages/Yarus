class ShortUrl < ActiveRecord::Base
  attr_accessible :active,:link_id, :shortcode
  has_many :click
  belongs_to      :link
end

class Link < ActiveRecord::Base
  attr_accessible :fullurl, :shorturl, :user_id
  has_one :short_url
  accepts_nested_attributes_for :short_url
  after_create :associate_link

  def associate_link
	@short = ShortUrl.find(ShortUrl.where(link_id: nil).first.id)
	self.shorturl = @short.id
	@short.link_id = self.id
	@short.save!
    self.save!   # raise ActiveRecord::Rollback  	
  end
end

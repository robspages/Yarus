class Link < ActiveRecord::Base
  attr_accessible :fullurl, :shorturl, :user_id
end

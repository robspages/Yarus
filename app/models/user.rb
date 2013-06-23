class User < ActiveRecord::Base
  attr_accessible :logintoken, :name,:provider, :uid, :name
end

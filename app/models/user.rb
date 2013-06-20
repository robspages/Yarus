class User < ActiveRecord::Base
  attr_accessible :logintoken, :name
end

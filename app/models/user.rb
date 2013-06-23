class User < ActiveRecord::Base
  attr_accessible :logintoken, :name,:provider, :uid, :name
  devise :omniauthable, :omniauth_providers => [:facebook]

  
end

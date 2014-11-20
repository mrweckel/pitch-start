class User < ActiveRecord::Base
  has_many :pitches
  has_many :comments
end

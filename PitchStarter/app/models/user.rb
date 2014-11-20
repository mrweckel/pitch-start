class User < ActiveRecord::Base
  has_many :pitches
  has_many :comments
  has_many :votes
end

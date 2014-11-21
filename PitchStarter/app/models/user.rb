class User < ActiveRecord::Base
  validates :username, uniqueness: true, presence: true

  has_many :pitches
  has_many :comments
  has_many :votes
end

class Pitch < ActiveRecord::Base
  belongs_to :user
  has_many :votes
  has_many :comments
  has_many :voters, through: :votes, source: :user
end

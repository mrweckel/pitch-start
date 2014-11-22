class Pitch < ActiveRecord::Base
  validates :title, :url, uniqueness: true, presence: true

  belongs_to :user
  has_many :votes
  has_many :comments
  has_many :voters, through: :votes, source: :user
end

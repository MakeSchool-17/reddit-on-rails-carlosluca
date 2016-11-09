class Subreddit < ApplicationRecord
  validates :name, :title, :description, :sidebar, presence: true

  belongs_to :user
  has_many :posts
end

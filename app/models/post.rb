class Post < ApplicationRecord
  belongs_to :user
  belongs_to :subreddit

  has_many :comments

  validates :title, :content, presence: true
end

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :subreddit

  has_many :comments, dependent: :delete_all

  validates :title, :content, presence: true
end

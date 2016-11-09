class User < ApplicationRecord
  has_many :subreddits
  has_many :posts
  has_many :comments
  validates :name, :password, :email, presence: true
end

class Subreddit < ApplicationRecord
  validates :name, length: { max: 21 }, presence: true, uniqueness: true
  validates :title, :description, :sidebar, presence: true

  belongs_to :user
  has_many :posts, dependent: :delete_all

end

require 'test_helper'

class SubredditTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "is Valid" do 
    u1 = User.create(name: "Carlos", password: "ILikeTrains", email: "c.diez@OnRails.com")

    s1 = Subreddit.create(name: "TFTS", title: "Tales from Tech Support", description: "MARA", sidebar: "nothing for now", user: u1)
    assert s1.valid?
    s2 = Subreddit.create(title: "Tales from Tech Support", description: "MARA", sidebar: "nothing for now", user: u1)
    assert !s2.valid?
  end

  test "subreddit has posts" do
    u1 = User.create(name: "Carlos", password: "ILikeTrains", email: "c.diez@OnRails.com")
    s1 = Subreddit.create(name: "TFTS", title: "Tales from Tech Support", description: "MARA", sidebar: "nothing for now", user: u1)

    assert s1.posts.size == 0
  end
end

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "is valid post" do
    s1 = Subreddit.create(name: "TFTS", title: "Tales from Tech Support", description: "MARA", sidebar: "nothing for now")
    u1 = User.create(name: "Carlos", password: "ILikeTrains", email: "c.diez@OnRails.com")

    p1 = Post.create(title: "Sample post", content: "My awesome post", user: u1, subreddit: s1)
    assert p1.valid?

    p2 = Post.create( content: "My awesome post", user: u1, subreddit: s1)
    assert !p2.valid?
  end

  test "post has comments" do
    s1 = Subreddit.create(name: "TFTS", title: "Tales from Tech Support", description: "MARA", sidebar: "nothing for now")
    u1 = User.create(name: "Carlos", password: "ILikeTrains", email: "c.diez@OnRails.com")
    p1 = Post.create(title: "Sample post", content: "My awesome post", user: u1, subreddit: s1)

    assert p1.comments.size == 0
  end
end

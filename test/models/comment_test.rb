require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "comment is valid" do
    s1 = Subreddit.create(name: "TFTS", title: "Tales from Tech Support", description: "MARA", sidebar: "nothing for now")
    u1 = User.create(name: "Carlos", password: "ILikeTrains", email: "c.diez@OnRails.com")
    p1 = Post.create(title: "Sample post", content: "My awesome post", user: u1, subreddit: s1)

    c1 = Comment.create(content: "Nice post!", user: u1, post: p1)
    assert c1.valid?
    c2 = Comment.create(user: u1, post: p1)
    assert !c2.valid?
  end
end

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.create(name: "Carlos", password: "ILikeTrains", email: "c.diez@OnRails.com")
  end

  test "user has email" do 
    u1 = User.create(name: "Carlos", password: "ILikeTrains", email: "c.diez@OnRails.com")
    assert u1.valid?
    u2 = User.create(name: "Carlos", password: "ILikeTrains")
    assert !u2.valid?
  end

  test "user has subreddits" do 
    assert @user.subreddits.size == 0
  end

  test "user has posts" do
    assert @user.posts.size == 0
  end

  test "user has comments" do
    assert @user.comments.size == 0
  end
end

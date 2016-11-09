require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "can post to subreddit" do
    assert_difference ('Post.count') do 
      post posts_url, params: {post: {title: @post.title, content: @post.content, user_id: @post.user_id, subreddit_id: @post.subreddit_id}}
    end
    assert_redirected_to post_url(Post.last)
  end

  test "can get edit form" do
    assert_difference ('Post.count') do 
      post posts_url, params: {post: {title: @post.title, content: @post.content, user_id: @post.user_id, subreddit_id: @post.subreddit_id}}
    end
  end
end

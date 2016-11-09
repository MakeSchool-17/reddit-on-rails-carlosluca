require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "can post to subreddit" do
    assert_difference('Post.count') do 
      post posts_url, params: {post: {title: @post.title, content: @post.content, user_id: @post.user_id, subreddit_id: @post.subreddit_id}}
    end
    assert_redirected_to post_url(Post.last)
  end

  test "can get edit form" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "can delete post" do
    assert_difference('Post.count', -1) do 
      delete post_url(@post)
    end
    assert_redirected_to posts_url
  end
end

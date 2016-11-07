json.extract! subreddit, :id, :name, :title, :description, :sidebar, :created_at, :updated_at
json.url subreddit_url(subreddit, format: :json)
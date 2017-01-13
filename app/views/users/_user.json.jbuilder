json.extract! user, :id, :username, :password, :name, :image_url, :formation, :position, :github, :created_at, :updated_at
json.url user_url(user, format: :json)

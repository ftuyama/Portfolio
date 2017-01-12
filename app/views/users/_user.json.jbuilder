json.extract! user, :id, :name, :formation, :position, :created_at, :updated_at
json.url user_url(user, format: :json)

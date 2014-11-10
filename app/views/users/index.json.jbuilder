json.array!(@users) do |user|
  json.extract! user, :id, :user_id, :username, :password, :first_name, :last_name, :score, :type
  json.url user_url(user, format: :json)
end

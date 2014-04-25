json.array!(@users) do |user|
  json.extract! user, :id, :email, :token, :expires_at
  json.url user_url(user, format: :json)
end

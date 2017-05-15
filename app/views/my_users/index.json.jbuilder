json.array!(@my_users) do |my_user|
  json.extract! my_user, :id, :user_name, :user_password
  json.url my_user_url(my_user, format: :json)
end

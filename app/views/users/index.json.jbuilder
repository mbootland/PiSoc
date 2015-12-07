json.array!(@users) do |user|
  json.extract! user, :id, :username, :password_digest, :first_name, :last_name, :email, :course, :role, :github
  json.url member_url(member, format: :json)
end

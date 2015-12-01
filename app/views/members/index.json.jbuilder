json.array!(@members) do |member|
  json.extract! member, :id, :username, :password, :first_name, :last_name, :email, :course, :role, :github
  json.url member_url(member, format: :json)
end

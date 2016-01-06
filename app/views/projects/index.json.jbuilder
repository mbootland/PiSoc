json.array!(@projects) do |project|
  json.extract! project, :id, :title, :body, :user_id, :image, :github
  json.url project_url(project, format: :json)
end

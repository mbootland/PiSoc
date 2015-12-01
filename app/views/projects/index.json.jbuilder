json.array!(@projects) do |project|
  json.extract! project, :id, :title, :body, :member_id, :image, :github
  json.url project_url(project, format: :json)
end

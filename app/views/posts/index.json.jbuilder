json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :visites_count
  json.url post_url(post, format: :json)
end

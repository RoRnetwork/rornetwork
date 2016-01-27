json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :publish, :publish_date, :acrchive, :user_id
  json.url post_url(post, format: :json)
end

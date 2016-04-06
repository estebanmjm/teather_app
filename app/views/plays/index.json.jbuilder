json.array!(@plays) do |play|
  json.extract! play, :id, :name, :description, :place, :price, :photo, :teather_id
  json.url play_url(play, format: :json)
end

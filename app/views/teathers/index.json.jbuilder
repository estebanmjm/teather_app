json.array!(@teathers) do |teather|
  json.extract! teather, :id, :name, :address, :manager, :mobile, :phone, :web_site, :logo, :description, :latitude, :longitude
  json.url teather_url(teather, format: :json)
end

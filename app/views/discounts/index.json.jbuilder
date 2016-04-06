json.array!(@discounts) do |discount|
  json.extract! discount, :id, :name, :description, :teather_id, :photo
  json.url discount_url(discount, format: :json)
end

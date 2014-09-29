json.array!(@brands) do |brand|
  json.extract! brand, :logo, :name
  json.url brand_url(brand, format: :json)
end

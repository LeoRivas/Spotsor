json.array!(@contests) do |contest|
  json.extract! contest, :photo, :description
  json.url contest_url(contest, format: :json)
end

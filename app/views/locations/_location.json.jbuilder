json.extract! location, :id, :longitude, :latitude, :height, :accuracy, :created_at, :updated_at
json.url location_url(location, format: :json)
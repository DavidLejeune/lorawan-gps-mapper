json.extract! datum, :id, :longitude, :latitude, :height, :accuracy, :created_at, :updated_at
json.url datum_url(datum, format: :json)
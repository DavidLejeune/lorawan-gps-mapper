json.extract! sensor, :id, :name, :description, :dev_eui, :created_at, :updated_at, :show_since
json.url sensor_url(sensor, format: :json)

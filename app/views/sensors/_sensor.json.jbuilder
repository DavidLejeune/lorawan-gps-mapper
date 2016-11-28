json.extract! sensor, :id, :name, :description, :EUI_device, :created_at, :updated_at
json.url sensor_url(sensor, format: :json)
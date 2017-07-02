json.extract! accident, :id, :crash_type, :crash_count, :location, :latitude, :longitude, :created_at, :updated_at
json.url accident_url(accident, format: :json)

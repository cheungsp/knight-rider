# json.extract! camera, :id, :latitude, :longitude, :created_at, :updated_at
# json.url camera_url(camera, format: :json)

json.array! @cameras do |camera|
  json.id camera.id

  json.latitude camera.latitude
  json.longitude camera.longitude
  json.created_at camera.created_at.strftime('%Y-%B-%d')
end

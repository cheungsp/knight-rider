
# json_seed = Rails.root.join('public/camMarkers.json')
#
# cam_markers = JSON.parse(json_seed.read)
#
# cam_markers.each do |coordinates|
#   Camera.create(latitude: coordinates['lat'], longitude: coordinates['lng'])
# end



# require 'csv'
#
# csv_seed = Rails.root.join('public/crime_stats.csv')
#
# crime_stats = CSV.parse(csv_seed.read, headers: true)
#
# incidents = crime_stats.map { |incident| incident.to_hash }

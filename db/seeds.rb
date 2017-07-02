
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


# Coordinates.utm_to_lat_long("WGS-84", 6688940, 219165, "33N")

# y = u["Y"].to_f
# x = u["X"].to_f
# Coordinates.utm_to_lat_long("WGS-84", y, x, "10N")

# incidents.each do |u|
#   a = Coordinates.utm_to_lat_long("WGS-84", u["Y"].to_f, u["X"].to_f, "10N")
#   u["Y"] = a[:lat]
#   u["X"] = a[:long]
#   u["YEAR"] = u["YEAR"].to_i
#   u["MONTH"] = u["MONTH"].to_i
#   u["DAY"] = u["DAY"].to_i
#   u["HOUR"] = u["HOUR"].to_i
#   u["MINUTE"] = u["MINUTE"].to_i
#
#   Crime.create(type_crime: u["TYPE"], year: u["YEAR"], month: u["MONTH"], day: u["DAY"], hour: u["HOUR"], minute: u["MINUTE"], hundred_block: u["HUNDRED_BLOCK"], neighbourhood: u["NEIGHBOURHOOD"], latitude: u["Y"], longitude: u["X"])
# end

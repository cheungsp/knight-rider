
json_seed = Rails.root.join('../public/camMarkers.json')

cam_markers = JSON.parse(json_seed.read)

cam_markers.each do |coordinates|
  Camera.create(latitude: coordinates['lat'], longitude: coordinates['lng'])
end



require 'csv'
csv_seed = Rails.root.join('../public/crime_stats.csv')
crime_stats = CSV.parse(csv_seed.read, headers: true)
incidents = crime_stats.map { |incident| incident.to_hash }

incidents.each do |u|
  a = Coordinates.utm_to_lat_long("WGS-84", u["Y"].to_f, u["X"].to_f, "10N")
  u["Y"] = a[:lat]
  u["X"] = a[:long]
  u["YEAR"] = u["YEAR"].to_i
  u["MONTH"] = u["MONTH"].to_i
  u["DAY"] = u["DAY"].to_i
  u["HOUR"] = u["HOUR"].to_i
  u["MINUTE"] = u["MINUTE"].to_i

  Crime.create(type_crime: u["TYPE"], year: u["YEAR"], month: u["MONTH"], day: u["DAY"], hour: u["HOUR"], minute: u["MINUTE"], hundred_block: u["HUNDRED_BLOCK"], neighbourhood: u["NEIGHBOURHOOD"], latitude: u["Y"], longitude: u["X"])
end

require 'csv'
csv_seed = Rails.root.join('../public/accidents.csv')
accidents = CSV.parse(csv_seed.read, headers: true)
incidents = accidents.map { |incident| incident.to_hash }

incidents.each do |u|
  u["Crash Count"] = u["Crash Count"].to_i
  u["Latitude"] = u["Latitude"].to_f
  u["Longitude"] = u["Longitude"].to_f

  Accident.create(crash_count: u["Crash Count"], location: u["Location"], crash_type: u["Crash Type"], latitude: u["Latitude"], longitude: u["Longitude"])
end



# q.neighbourhood.gsub(/-/,'')

# b = Crime.all.where(neighbourhood: 'Grandview-Woodland')
# b.each do |x|
# x.update_attribute :neighbourhood, 'grandviewwoodland'
# end

#

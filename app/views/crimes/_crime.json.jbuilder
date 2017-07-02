json.extract! crime, :id, :type_crime, :year, :month, :day, :hour, :minute, :hundred_block, :neighbourhood, :latitude, :longitude, :created_at, :updated_at
json.url crime_url(crime, format: :json)

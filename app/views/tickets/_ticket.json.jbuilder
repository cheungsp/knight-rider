json.extract! ticket, :id, :latitude, :longitude, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)

json.extract! room, :id, :room_type, :status, :created_at, :updated_at
json.url room_url(room, format: :json)

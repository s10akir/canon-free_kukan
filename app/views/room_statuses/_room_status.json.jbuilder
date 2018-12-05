json.extract! room_status, :id, :room_id, :user_id, :status, :created_at, :updated_at
json.url room_status_url(room_status, format: :json)

json.extract! presence, :id, :UserID, :RegionID, :SessionID, :SecureSessionID, :LastSeen, :created_at, :updated_at
json.url presence_url(presence, format: :json)

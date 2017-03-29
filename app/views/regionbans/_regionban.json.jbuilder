json.extract! regionban, :id, :regionUUID, :bannedUUID, :bannedIp, :bannedIpHostMask, :created_at, :updated_at
json.url regionban_url(regionban, format: :json)

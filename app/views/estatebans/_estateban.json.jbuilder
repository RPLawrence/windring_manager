json.extract! estateban, :id, :EstateID, :bannedUUID, :bannedIp, :bannedIpHostMask, :bannedNameMask, :created_at, :updated_at
json.url estateban_url(estateban, format: :json)

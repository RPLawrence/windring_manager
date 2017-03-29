json.extract! auth, :id, :passwordHash, :passwordSalt, :webLoginKey, :accountType, :created_at, :updated_at
json.url auth_url(auth, format: :json)

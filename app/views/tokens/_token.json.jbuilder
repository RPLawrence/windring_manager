json.extract! token, :id, :UUID, :token, :validity, :created_at, :updated_at
json.url token_url(token, format: :json)

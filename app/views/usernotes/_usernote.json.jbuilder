json.extract! usernote, :id, :useruuid, :targetuuid, :notes, :created_at, :updated_at
json.url usernote_url(usernote, format: :json)

json.extract! profile_note, :id, :useruuid, :targetuuid, :notes, :created_at, :updated_at
json.url profile_note_url(profile_note, format: :json)

json.extract! asset, :id, :name, :description, :assetType, :local, :temporary, :data, :create_time, :access_time, :asset_flags, :CreatorID, :created_at, :updated_at
json.url asset_url(asset, format: :json)

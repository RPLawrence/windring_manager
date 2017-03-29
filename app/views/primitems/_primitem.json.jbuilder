json.extract! primitem, :id, :invType, :assetType, :name, :description, :creationDate, :nextPermissions, :currentPermissions, :basePermissions, :everyonePermissions, :groupPermissions, :flags, :primID, :assetID, :parentFolderID, :CreatorID, :ownerID, :groupID, :lastOwnerID, :created_at, :updated_at
json.url primitem_url(primitem, format: :json)

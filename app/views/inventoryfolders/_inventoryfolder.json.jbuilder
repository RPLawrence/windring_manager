json.extract! inventoryfolder, :id, :folderName, :type, :version, :agentID, :parentFolderID, :created_at, :updated_at
json.url inventoryfolder_url(inventoryfolder, format: :json)

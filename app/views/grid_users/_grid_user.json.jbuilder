json.extract! grid_user, :id, :HomeRegionID, :HomePosition, :HomeLookAt, :LastRegionID, :LastPosition, :LastLookAt, :Online, :Login, :Logout, :created_at, :updated_at
json.url grid_user_url(grid_user, format: :json)

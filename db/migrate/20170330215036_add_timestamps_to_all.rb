class AddTimestampsToAll < ActiveRecord::Migration[5.0]
  def change
    db_tables = [ :avatars, :friends, :griduser, :presence, :useraccounts, :assets, :auth, :passwordhash, :bakedterrain,
        :classifieds, :estate_groups, :estate_managers, :estate_map, :estate_settings, :estate_users, :estateban,
        :hg_traveling_data, :im_offline, :inventoryfolders, :inventoryitems, :land, :landaccesslist, :os_groups_groups,
        :os_groups_invites, :os_groups_membership, :os_groups_notices, :os_groups_principals, :os_groups_rolemembership,
        :os_groups_roles, :primitems, :prims, :primshapes, :profile, :profile_classifieds, :profile_notes, :profile_picks,
        :profile_settings, :regionban, :regionenvironment, :regionextra, :regions, :regionsettings, :regionwindlight,
        :spawn_points, :terrain, :tokens, :userdata, :usernotes, :userpicks, :userprofile, :usersettings ]
    
    db_tables.each { |t| add_timestamps t }
  end
end

class Avatar < ApplicationRecord
  has_one :user_account, :auth, :profile, :usersetting, :userprofile, :userpick,
          :usernote, :userdata, :profile_setting, :profile_pick, :profile_note,
          :presence, :griduser

  has_many :friends, :assets, :classifieds, :estate_groups, :estate_managers,
           :estate_users, :estatebans, :im_offlines, :inventoryfolders,
           :inventoryitems, :lands, :prims, :primitems, :regions, :regionbans

end

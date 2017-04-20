# == Schema Information
#
# Table name: userdata
#
#  UserId  :string(36)       not null
#  TagId   :string(64)       not null
#  DataKey :string(255)
#  DataVal :string(255)
#

class Userdatum < ApplicationRecord
  self.table_name = "userdata"
end

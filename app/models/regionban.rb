# == Schema Information
#
# Table name: regionban
#
#  regionUUID       :string(36)       not null
#  bannedUUID       :string(36)       not null
#  bannedIp         :string(16)       not null
#  bannedIpHostMask :string(16)       not null
#

class Regionban < ApplicationRecord
  self.table_name = "regionban"
end

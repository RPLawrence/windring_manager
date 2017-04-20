# == Schema Information
#
# Table name: estateban
#
#  EstateID         :integer          not null
#  bannedUUID       :string(36)       not null
#  bannedIp         :string(16)       not null
#  bannedIpHostMask :string(16)       not null
#  bannedNameMask   :string(64)
#

class Estateban < ApplicationRecord
  self.table_name = "estateban"
end

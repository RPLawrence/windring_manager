# == Schema Information
#
# Table name: os_groups_rolemembership
#
#  GroupID     :string(36)       default(""), not null
#  RoleID      :string(36)       default(""), not null
#  PrincipalID :string(255)      default(""), not null
#

class OsGroupsRolemembership < ApplicationRecord
  self.table_name = "os_groups_rolemembership"
end

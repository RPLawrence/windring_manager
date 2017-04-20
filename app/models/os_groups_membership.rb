# == Schema Information
#
# Table name: os_groups_membership
#
#  GroupID        :string(36)       default(""), not null
#  PrincipalID    :string(255)      default(""), not null
#  SelectedRoleID :string(36)       default(""), not null
#  Contribution   :integer          default("0"), not null
#  ListInProfile  :integer          default("1"), not null
#  AcceptNotices  :integer          default("1"), not null
#  AccessToken    :string(36)       default(""), not null
#

class OsGroupsMembership < ApplicationRecord
  self.table_name = "os_groups_membership"
end

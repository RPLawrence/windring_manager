# == Schema Information
#
# Table name: os_groups_roles
#
#  GroupID     :string(36)       default(""), not null
#  RoleID      :string(36)       default(""), not null
#  Name        :string(255)      default(""), not null
#  Description :string(255)      default(""), not null
#  Title       :string(255)      default(""), not null
#  Powers      :integer          default("0"), not null
#

class OsGroupsRole < ApplicationRecord
end

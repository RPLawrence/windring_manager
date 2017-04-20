# == Schema Information
#
# Table name: os_groups_groups
#
#  GroupID        :string(36)       default(""), not null, primary key
#  Location       :string(255)      default(""), not null
#  Name           :string(255)      default(""), not null
#  Charter        :text(65535)      not null
#  InsigniaID     :string(36)       default(""), not null
#  FounderID      :string(36)       default(""), not null
#  MembershipFee  :integer          default("0"), not null
#  OpenEnrollment :string(255)      default(""), not null
#  ShowInList     :integer          default("0"), not null
#  AllowPublish   :integer          default("0"), not null
#  MaturePublish  :integer          default("0"), not null
#  OwnerRoleID    :string(36)       default(""), not null
#

class OsGroupsGroup < ApplicationRecord
end

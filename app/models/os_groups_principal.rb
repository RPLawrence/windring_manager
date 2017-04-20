# == Schema Information
#
# Table name: os_groups_principals
#
#  PrincipalID   :string(255)      default(""), not null, primary key
#  ActiveGroupID :string(36)       default(""), not null
#

class OsGroupsPrincipal < ApplicationRecord
end

# == Schema Information
#
# Table name: os_groups_invites
#
#  InviteID    :string(36)       default(""), not null, primary key
#  GroupID     :string(36)       default(""), not null
#  RoleID      :string(36)       default(""), not null
#  PrincipalID :string(255)      default(""), not null
#  TMStamp     :datetime         not null
#

require 'test_helper'

class OsGroupsInviteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

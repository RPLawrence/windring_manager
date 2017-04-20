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

require 'test_helper'

class OsGroupsMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

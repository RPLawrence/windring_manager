# == Schema Information
#
# Table name: regionban
#
#  regionUUID       :string(36)       not null
#  bannedUUID       :string(36)       not null
#  bannedIp         :string(16)       not null
#  bannedIpHostMask :string(16)       not null
#

require 'test_helper'

class RegionbanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: assets
#
#  name        :string(64)       not null
#  description :string(64)       not null
#  assetType   :integer          not null
#  local       :boolean          not null
#  temporary   :boolean          not null
#  data        :binary(429496729 not null
#  create_time :integer          default("0")
#  access_time :integer          default("0")
#  asset_flags :integer          default("0"), not null
#  CreatorID   :string(128)      default(""), not null
#  id          :string(36)       default("00000000-0000-0000-0000-000000000000"), not null, primary key
#

require 'test_helper'

class AssetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

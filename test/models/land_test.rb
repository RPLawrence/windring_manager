# == Schema Information
#
# Table name: land
#
#  UUID             :string(255)      not null, primary key
#  RegionUUID       :string(255)
#  LocalLandID      :integer
#  Bitmap           :binary(429496729
#  Name             :string(255)
#  Description      :string(255)
#  OwnerUUID        :string(255)
#  IsGroupOwned     :integer
#  Area             :integer
#  AuctionID        :integer
#  Category         :integer
#  ClaimDate        :integer
#  ClaimPrice       :integer
#  GroupUUID        :string(255)
#  SalePrice        :integer
#  LandStatus       :integer
#  LandFlags        :integer
#  LandingType      :integer
#  MediaAutoScale   :integer
#  MediaTextureUUID :string(255)
#  MediaURL         :string(255)
#  MusicURL         :string(255)
#  PassHours        :float(24)
#  PassPrice        :integer
#  SnapshotUUID     :string(255)
#  UserLocationX    :float(24)
#  UserLocationY    :float(24)
#  UserLocationZ    :float(24)
#  UserLookAtX      :float(24)
#  UserLookAtY      :float(24)
#  UserLookAtZ      :float(24)
#  AuthbuyerID      :string(36)       default("00000000-0000-0000-0000-000000000000"), not null
#  OtherCleanTime   :integer          default("0"), not null
#  Dwell            :integer          default("0"), not null
#  MediaType        :string(32)       default("none/none"), not null
#  MediaDescription :string(255)      default(""), not null
#  MediaSize        :string(16)       default("0,0"), not null
#  MediaLoop        :boolean          default("0"), not null
#  ObscureMusic     :boolean          default("0"), not null
#  ObscureMedia     :boolean          default("0"), not null
#  SeeAVs           :integer          default("1"), not null
#  AnyAVSounds      :integer          default("1"), not null
#  GroupAVSounds    :integer          default("1"), not null
#

require 'test_helper'

class LandTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

require 'test_helper'

class LandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @land = lands(:one)
  end

  test "should get index" do
    get lands_url
    assert_response :success
  end

  test "should get new" do
    get new_land_url
    assert_response :success
  end

  test "should create land" do
    assert_difference('Land.count') do
      post lands_url, params: { land: { AnyAVSounds: @land.AnyAVSounds, Area: @land.Area, AuctionID: @land.AuctionID, AuthbuyerID: @land.AuthbuyerID, Bitmap: @land.Bitmap, Category: @land.Category, ClaimDate: @land.ClaimDate, ClaimPrice: @land.ClaimPrice, Description: @land.Description, Dwell: @land.Dwell, GroupAVSounds: @land.GroupAVSounds, GroupUUID: @land.GroupUUID, IsGroupOwned: @land.IsGroupOwned, LandFlags: @land.LandFlags, LandStatus: @land.LandStatus, LandingType: @land.LandingType, LocalLandID: @land.LocalLandID, MediaAutoScale: @land.MediaAutoScale, MediaDescription: @land.MediaDescription, MediaLoop: @land.MediaLoop, MediaSize: @land.MediaSize, MediaTextureUUID: @land.MediaTextureUUID, MediaType: @land.MediaType, MediaURL: @land.MediaURL, MusicURL: @land.MusicURL, Name: @land.Name, ObscureMedia: @land.ObscureMedia, ObscureMusic: @land.ObscureMusic, OtherCleanTime: @land.OtherCleanTime, OwnerUUID: @land.OwnerUUID, PassHours: @land.PassHours, PassPrice: @land.PassPrice, RegionUUID: @land.RegionUUID, SalePrice: @land.SalePrice, SeeAVs: @land.SeeAVs, SnapshotUUID: @land.SnapshotUUID, UserLocationX: @land.UserLocationX, UserLocationY: @land.UserLocationY, UserLocationZ: @land.UserLocationZ, UserLookAtX: @land.UserLookAtX, UserLookAtY: @land.UserLookAtY, UserLookAtZ: @land.UserLookAtZ } }
    end

    assert_redirected_to land_url(Land.last)
  end

  test "should show land" do
    get land_url(@land)
    assert_response :success
  end

  test "should get edit" do
    get edit_land_url(@land)
    assert_response :success
  end

  test "should update land" do
    patch land_url(@land), params: { land: { AnyAVSounds: @land.AnyAVSounds, Area: @land.Area, AuctionID: @land.AuctionID, AuthbuyerID: @land.AuthbuyerID, Bitmap: @land.Bitmap, Category: @land.Category, ClaimDate: @land.ClaimDate, ClaimPrice: @land.ClaimPrice, Description: @land.Description, Dwell: @land.Dwell, GroupAVSounds: @land.GroupAVSounds, GroupUUID: @land.GroupUUID, IsGroupOwned: @land.IsGroupOwned, LandFlags: @land.LandFlags, LandStatus: @land.LandStatus, LandingType: @land.LandingType, LocalLandID: @land.LocalLandID, MediaAutoScale: @land.MediaAutoScale, MediaDescription: @land.MediaDescription, MediaLoop: @land.MediaLoop, MediaSize: @land.MediaSize, MediaTextureUUID: @land.MediaTextureUUID, MediaType: @land.MediaType, MediaURL: @land.MediaURL, MusicURL: @land.MusicURL, Name: @land.Name, ObscureMedia: @land.ObscureMedia, ObscureMusic: @land.ObscureMusic, OtherCleanTime: @land.OtherCleanTime, OwnerUUID: @land.OwnerUUID, PassHours: @land.PassHours, PassPrice: @land.PassPrice, RegionUUID: @land.RegionUUID, SalePrice: @land.SalePrice, SeeAVs: @land.SeeAVs, SnapshotUUID: @land.SnapshotUUID, UserLocationX: @land.UserLocationX, UserLocationY: @land.UserLocationY, UserLocationZ: @land.UserLocationZ, UserLookAtX: @land.UserLookAtX, UserLookAtY: @land.UserLookAtY, UserLookAtZ: @land.UserLookAtZ } }
    assert_redirected_to land_url(@land)
  end

  test "should destroy land" do
    assert_difference('Land.count', -1) do
      delete land_url(@land)
    end

    assert_redirected_to lands_url
  end
end

require 'test_helper'

class RegionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @region = regions(:one)
  end

  test "should get index" do
    get regions_url
    assert_response :success
  end

  test "should get new" do
    get new_region_url
    assert_response :success
  end

  test "should create region" do
    assert_difference('Region.count') do
      post regions_url, params: { region: { PrincipalID: @region.PrincipalID, ScopeID: @region.ScopeID, Token: @region.Token, access: @region.access, eastOverrideHandle: @region.eastOverrideHandle, flags: @region.flags, last_seen: @region.last_seen, locX: @region.locX, locY: @region.locY, locZ: @region.locZ, northOverrideHandle: @region.northOverrideHandle, originUUID: @region.originUUID, owner_uuid: @region.owner_uuid, parcelMapTexture: @region.parcelMapTexture, regionAssetRecvKey: @region.regionAssetRecvKey, regionAssetSendKey: @region.regionAssetSendKey, regionAssetURI: @region.regionAssetURI, regionDataURI: @region.regionDataURI, regionHandle: @region.regionHandle, regionMapTexture: @region.regionMapTexture, regionName: @region.regionName, regionRecvKey: @region.regionRecvKey, regionSecret: @region.regionSecret, regionSendKey: @region.regionSendKey, regionUserRecvKey: @region.regionUserRecvKey, regionUserSendKey: @region.regionUserSendKey, regionUserURI: @region.regionUserURI, serverHttpPort: @region.serverHttpPort, serverIP: @region.serverIP, serverPort: @region.serverPort, serverRemotingPort: @region.serverRemotingPort, serverURI: @region.serverURI, sizeX: @region.sizeX, sizeY: @region.sizeY, southOverrideHandle: @region.southOverrideHandle, westOverrideHandle: @region.westOverrideHandle } }
    end

    assert_redirected_to region_url(Region.last)
  end

  test "should show region" do
    get region_url(@region)
    assert_response :success
  end

  test "should get edit" do
    get edit_region_url(@region)
    assert_response :success
  end

  test "should update region" do
    patch region_url(@region), params: { region: { PrincipalID: @region.PrincipalID, ScopeID: @region.ScopeID, Token: @region.Token, access: @region.access, eastOverrideHandle: @region.eastOverrideHandle, flags: @region.flags, last_seen: @region.last_seen, locX: @region.locX, locY: @region.locY, locZ: @region.locZ, northOverrideHandle: @region.northOverrideHandle, originUUID: @region.originUUID, owner_uuid: @region.owner_uuid, parcelMapTexture: @region.parcelMapTexture, regionAssetRecvKey: @region.regionAssetRecvKey, regionAssetSendKey: @region.regionAssetSendKey, regionAssetURI: @region.regionAssetURI, regionDataURI: @region.regionDataURI, regionHandle: @region.regionHandle, regionMapTexture: @region.regionMapTexture, regionName: @region.regionName, regionRecvKey: @region.regionRecvKey, regionSecret: @region.regionSecret, regionSendKey: @region.regionSendKey, regionUserRecvKey: @region.regionUserRecvKey, regionUserSendKey: @region.regionUserSendKey, regionUserURI: @region.regionUserURI, serverHttpPort: @region.serverHttpPort, serverIP: @region.serverIP, serverPort: @region.serverPort, serverRemotingPort: @region.serverRemotingPort, serverURI: @region.serverURI, sizeX: @region.sizeX, sizeY: @region.sizeY, southOverrideHandle: @region.southOverrideHandle, westOverrideHandle: @region.westOverrideHandle } }
    assert_redirected_to region_url(@region)
  end

  test "should destroy region" do
    assert_difference('Region.count', -1) do
      delete region_url(@region)
    end

    assert_redirected_to regions_url
  end
end

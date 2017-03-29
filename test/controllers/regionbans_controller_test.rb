require 'test_helper'

class RegionbansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regionban = regionbans(:one)
  end

  test "should get index" do
    get regionbans_url
    assert_response :success
  end

  test "should get new" do
    get new_regionban_url
    assert_response :success
  end

  test "should create regionban" do
    assert_difference('Regionban.count') do
      post regionbans_url, params: { regionban: { bannedIp: @regionban.bannedIp, bannedIpHostMask: @regionban.bannedIpHostMask, bannedUUID: @regionban.bannedUUID, regionUUID: @regionban.regionUUID } }
    end

    assert_redirected_to regionban_url(Regionban.last)
  end

  test "should show regionban" do
    get regionban_url(@regionban)
    assert_response :success
  end

  test "should get edit" do
    get edit_regionban_url(@regionban)
    assert_response :success
  end

  test "should update regionban" do
    patch regionban_url(@regionban), params: { regionban: { bannedIp: @regionban.bannedIp, bannedIpHostMask: @regionban.bannedIpHostMask, bannedUUID: @regionban.bannedUUID, regionUUID: @regionban.regionUUID } }
    assert_redirected_to regionban_url(@regionban)
  end

  test "should destroy regionban" do
    assert_difference('Regionban.count', -1) do
      delete regionban_url(@regionban)
    end

    assert_redirected_to regionbans_url
  end
end

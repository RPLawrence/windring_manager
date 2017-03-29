require 'test_helper'

class ProfilePicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_pick = profile_picks(:one)
  end

  test "should get index" do
    get profile_picks_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_pick_url
    assert_response :success
  end

  test "should create profile_pick" do
    assert_difference('ProfilePick.count') do
      post profile_picks_url, params: { profile_pick: { creatoruuid: @profile_pick.creatoruuid, description: @profile_pick.description, enabled: @profile_pick.enabled, name: @profile_pick.name, originalname: @profile_pick.originalname, parceluuid: @profile_pick.parceluuid, posglobal: @profile_pick.posglobal, simname: @profile_pick.simname, snapshotuuid: @profile_pick.snapshotuuid, sortorder: @profile_pick.sortorder, toppick: @profile_pick.toppick, user: @profile_pick.user } }
    end

    assert_redirected_to profile_pick_url(ProfilePick.last)
  end

  test "should show profile_pick" do
    get profile_pick_url(@profile_pick)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_pick_url(@profile_pick)
    assert_response :success
  end

  test "should update profile_pick" do
    patch profile_pick_url(@profile_pick), params: { profile_pick: { creatoruuid: @profile_pick.creatoruuid, description: @profile_pick.description, enabled: @profile_pick.enabled, name: @profile_pick.name, originalname: @profile_pick.originalname, parceluuid: @profile_pick.parceluuid, posglobal: @profile_pick.posglobal, simname: @profile_pick.simname, snapshotuuid: @profile_pick.snapshotuuid, sortorder: @profile_pick.sortorder, toppick: @profile_pick.toppick, user: @profile_pick.user } }
    assert_redirected_to profile_pick_url(@profile_pick)
  end

  test "should destroy profile_pick" do
    assert_difference('ProfilePick.count', -1) do
      delete profile_pick_url(@profile_pick)
    end

    assert_redirected_to profile_picks_url
  end
end

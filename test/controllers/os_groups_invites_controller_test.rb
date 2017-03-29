require 'test_helper'

class OsGroupsInvitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_groups_invite = os_groups_invites(:one)
  end

  test "should get index" do
    get os_groups_invites_url
    assert_response :success
  end

  test "should get new" do
    get new_os_groups_invite_url
    assert_response :success
  end

  test "should create os_groups_invite" do
    assert_difference('OsGroupsInvite.count') do
      post os_groups_invites_url, params: { os_groups_invite: { GroupID: @os_groups_invite.GroupID, PrincipalID: @os_groups_invite.PrincipalID, RoleID: @os_groups_invite.RoleID, TMStamp: @os_groups_invite.TMStamp } }
    end

    assert_redirected_to os_groups_invite_url(OsGroupsInvite.last)
  end

  test "should show os_groups_invite" do
    get os_groups_invite_url(@os_groups_invite)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_groups_invite_url(@os_groups_invite)
    assert_response :success
  end

  test "should update os_groups_invite" do
    patch os_groups_invite_url(@os_groups_invite), params: { os_groups_invite: { GroupID: @os_groups_invite.GroupID, PrincipalID: @os_groups_invite.PrincipalID, RoleID: @os_groups_invite.RoleID, TMStamp: @os_groups_invite.TMStamp } }
    assert_redirected_to os_groups_invite_url(@os_groups_invite)
  end

  test "should destroy os_groups_invite" do
    assert_difference('OsGroupsInvite.count', -1) do
      delete os_groups_invite_url(@os_groups_invite)
    end

    assert_redirected_to os_groups_invites_url
  end
end

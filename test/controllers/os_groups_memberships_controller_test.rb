require 'test_helper'

class OsGroupsMembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_groups_membership = os_groups_memberships(:one)
  end

  test "should get index" do
    get os_groups_memberships_url
    assert_response :success
  end

  test "should get new" do
    get new_os_groups_membership_url
    assert_response :success
  end

  test "should create os_groups_membership" do
    assert_difference('OsGroupsMembership.count') do
      post os_groups_memberships_url, params: { os_groups_membership: { AcceptNotices: @os_groups_membership.AcceptNotices, AccessToken: @os_groups_membership.AccessToken, Contribution: @os_groups_membership.Contribution, GroupID: @os_groups_membership.GroupID, ListInProfile: @os_groups_membership.ListInProfile, PrincipalID: @os_groups_membership.PrincipalID, SelectedRoleID: @os_groups_membership.SelectedRoleID } }
    end

    assert_redirected_to os_groups_membership_url(OsGroupsMembership.last)
  end

  test "should show os_groups_membership" do
    get os_groups_membership_url(@os_groups_membership)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_groups_membership_url(@os_groups_membership)
    assert_response :success
  end

  test "should update os_groups_membership" do
    patch os_groups_membership_url(@os_groups_membership), params: { os_groups_membership: { AcceptNotices: @os_groups_membership.AcceptNotices, AccessToken: @os_groups_membership.AccessToken, Contribution: @os_groups_membership.Contribution, GroupID: @os_groups_membership.GroupID, ListInProfile: @os_groups_membership.ListInProfile, PrincipalID: @os_groups_membership.PrincipalID, SelectedRoleID: @os_groups_membership.SelectedRoleID } }
    assert_redirected_to os_groups_membership_url(@os_groups_membership)
  end

  test "should destroy os_groups_membership" do
    assert_difference('OsGroupsMembership.count', -1) do
      delete os_groups_membership_url(@os_groups_membership)
    end

    assert_redirected_to os_groups_memberships_url
  end
end

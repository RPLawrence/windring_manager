require 'test_helper'

class OsGroupsGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_groups_group = os_groups_groups(:one)
  end

  test "should get index" do
    get os_groups_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_os_groups_group_url
    assert_response :success
  end

  test "should create os_groups_group" do
    assert_difference('OsGroupsGroup.count') do
      post os_groups_groups_url, params: { os_groups_group: { AllowPublish: @os_groups_group.AllowPublish, Charter: @os_groups_group.Charter, FounderID: @os_groups_group.FounderID, InsigniaID: @os_groups_group.InsigniaID, Location: @os_groups_group.Location, MaturePublish: @os_groups_group.MaturePublish, MembershipFee: @os_groups_group.MembershipFee, Name: @os_groups_group.Name, OpenEnrollment: @os_groups_group.OpenEnrollment, OwnerRoleID: @os_groups_group.OwnerRoleID, ShowInList: @os_groups_group.ShowInList } }
    end

    assert_redirected_to os_groups_group_url(OsGroupsGroup.last)
  end

  test "should show os_groups_group" do
    get os_groups_group_url(@os_groups_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_groups_group_url(@os_groups_group)
    assert_response :success
  end

  test "should update os_groups_group" do
    patch os_groups_group_url(@os_groups_group), params: { os_groups_group: { AllowPublish: @os_groups_group.AllowPublish, Charter: @os_groups_group.Charter, FounderID: @os_groups_group.FounderID, InsigniaID: @os_groups_group.InsigniaID, Location: @os_groups_group.Location, MaturePublish: @os_groups_group.MaturePublish, MembershipFee: @os_groups_group.MembershipFee, Name: @os_groups_group.Name, OpenEnrollment: @os_groups_group.OpenEnrollment, OwnerRoleID: @os_groups_group.OwnerRoleID, ShowInList: @os_groups_group.ShowInList } }
    assert_redirected_to os_groups_group_url(@os_groups_group)
  end

  test "should destroy os_groups_group" do
    assert_difference('OsGroupsGroup.count', -1) do
      delete os_groups_group_url(@os_groups_group)
    end

    assert_redirected_to os_groups_groups_url
  end
end

require 'test_helper'

class OsGroupsRolemembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_groups_rolemembership = os_groups_rolememberships(:one)
  end

  test "should get index" do
    get os_groups_rolememberships_url
    assert_response :success
  end

  test "should get new" do
    get new_os_groups_rolemembership_url
    assert_response :success
  end

  test "should create os_groups_rolemembership" do
    assert_difference('OsGroupsRolemembership.count') do
      post os_groups_rolememberships_url, params: { os_groups_rolemembership: { GroupID: @os_groups_rolemembership.GroupID, PrincipalID: @os_groups_rolemembership.PrincipalID, RoleID: @os_groups_rolemembership.RoleID } }
    end

    assert_redirected_to os_groups_rolemembership_url(OsGroupsRolemembership.last)
  end

  test "should show os_groups_rolemembership" do
    get os_groups_rolemembership_url(@os_groups_rolemembership)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_groups_rolemembership_url(@os_groups_rolemembership)
    assert_response :success
  end

  test "should update os_groups_rolemembership" do
    patch os_groups_rolemembership_url(@os_groups_rolemembership), params: { os_groups_rolemembership: { GroupID: @os_groups_rolemembership.GroupID, PrincipalID: @os_groups_rolemembership.PrincipalID, RoleID: @os_groups_rolemembership.RoleID } }
    assert_redirected_to os_groups_rolemembership_url(@os_groups_rolemembership)
  end

  test "should destroy os_groups_rolemembership" do
    assert_difference('OsGroupsRolemembership.count', -1) do
      delete os_groups_rolemembership_url(@os_groups_rolemembership)
    end

    assert_redirected_to os_groups_rolememberships_url
  end
end

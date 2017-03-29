require 'test_helper'

class OsGroupsRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_groups_role = os_groups_roles(:one)
  end

  test "should get index" do
    get os_groups_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_os_groups_role_url
    assert_response :success
  end

  test "should create os_groups_role" do
    assert_difference('OsGroupsRole.count') do
      post os_groups_roles_url, params: { os_groups_role: { Description: @os_groups_role.Description, GroupID: @os_groups_role.GroupID, Name: @os_groups_role.Name, Powers: @os_groups_role.Powers, RoleID: @os_groups_role.RoleID, Title: @os_groups_role.Title } }
    end

    assert_redirected_to os_groups_role_url(OsGroupsRole.last)
  end

  test "should show os_groups_role" do
    get os_groups_role_url(@os_groups_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_groups_role_url(@os_groups_role)
    assert_response :success
  end

  test "should update os_groups_role" do
    patch os_groups_role_url(@os_groups_role), params: { os_groups_role: { Description: @os_groups_role.Description, GroupID: @os_groups_role.GroupID, Name: @os_groups_role.Name, Powers: @os_groups_role.Powers, RoleID: @os_groups_role.RoleID, Title: @os_groups_role.Title } }
    assert_redirected_to os_groups_role_url(@os_groups_role)
  end

  test "should destroy os_groups_role" do
    assert_difference('OsGroupsRole.count', -1) do
      delete os_groups_role_url(@os_groups_role)
    end

    assert_redirected_to os_groups_roles_url
  end
end

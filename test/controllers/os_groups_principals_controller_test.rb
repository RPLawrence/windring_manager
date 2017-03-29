require 'test_helper'

class OsGroupsPrincipalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_groups_principal = os_groups_principals(:one)
  end

  test "should get index" do
    get os_groups_principals_url
    assert_response :success
  end

  test "should get new" do
    get new_os_groups_principal_url
    assert_response :success
  end

  test "should create os_groups_principal" do
    assert_difference('OsGroupsPrincipal.count') do
      post os_groups_principals_url, params: { os_groups_principal: { ActiveGroupID: @os_groups_principal.ActiveGroupID } }
    end

    assert_redirected_to os_groups_principal_url(OsGroupsPrincipal.last)
  end

  test "should show os_groups_principal" do
    get os_groups_principal_url(@os_groups_principal)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_groups_principal_url(@os_groups_principal)
    assert_response :success
  end

  test "should update os_groups_principal" do
    patch os_groups_principal_url(@os_groups_principal), params: { os_groups_principal: { ActiveGroupID: @os_groups_principal.ActiveGroupID } }
    assert_redirected_to os_groups_principal_url(@os_groups_principal)
  end

  test "should destroy os_groups_principal" do
    assert_difference('OsGroupsPrincipal.count', -1) do
      delete os_groups_principal_url(@os_groups_principal)
    end

    assert_redirected_to os_groups_principals_url
  end
end

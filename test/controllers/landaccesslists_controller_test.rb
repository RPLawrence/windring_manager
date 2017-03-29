require 'test_helper'

class LandaccesslistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @landaccesslist = landaccesslists(:one)
  end

  test "should get index" do
    get landaccesslists_url
    assert_response :success
  end

  test "should get new" do
    get new_landaccesslist_url
    assert_response :success
  end

  test "should create landaccesslist" do
    assert_difference('Landaccesslist.count') do
      post landaccesslists_url, params: { landaccesslist: { AccessUUID: @landaccesslist.AccessUUID, Expires: @landaccesslist.Expires, Flags: @landaccesslist.Flags, LandUUID: @landaccesslist.LandUUID } }
    end

    assert_redirected_to landaccesslist_url(Landaccesslist.last)
  end

  test "should show landaccesslist" do
    get landaccesslist_url(@landaccesslist)
    assert_response :success
  end

  test "should get edit" do
    get edit_landaccesslist_url(@landaccesslist)
    assert_response :success
  end

  test "should update landaccesslist" do
    patch landaccesslist_url(@landaccesslist), params: { landaccesslist: { AccessUUID: @landaccesslist.AccessUUID, Expires: @landaccesslist.Expires, Flags: @landaccesslist.Flags, LandUUID: @landaccesslist.LandUUID } }
    assert_redirected_to landaccesslist_url(@landaccesslist)
  end

  test "should destroy landaccesslist" do
    assert_difference('Landaccesslist.count', -1) do
      delete landaccesslist_url(@landaccesslist)
    end

    assert_redirected_to landaccesslists_url
  end
end

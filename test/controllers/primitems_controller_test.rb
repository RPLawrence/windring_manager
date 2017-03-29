require 'test_helper'

class PrimitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @primitem = primitems(:one)
  end

  test "should get index" do
    get primitems_url
    assert_response :success
  end

  test "should get new" do
    get new_primitem_url
    assert_response :success
  end

  test "should create primitem" do
    assert_difference('Primitem.count') do
      post primitems_url, params: { primitem: { CreatorID: @primitem.CreatorID, assetID: @primitem.assetID, assetType: @primitem.assetType, basePermissions: @primitem.basePermissions, creationDate: @primitem.creationDate, currentPermissions: @primitem.currentPermissions, description: @primitem.description, everyonePermissions: @primitem.everyonePermissions, flags: @primitem.flags, groupID: @primitem.groupID, groupPermissions: @primitem.groupPermissions, invType: @primitem.invType, lastOwnerID: @primitem.lastOwnerID, name: @primitem.name, nextPermissions: @primitem.nextPermissions, ownerID: @primitem.ownerID, parentFolderID: @primitem.parentFolderID, primID: @primitem.primID } }
    end

    assert_redirected_to primitem_url(Primitem.last)
  end

  test "should show primitem" do
    get primitem_url(@primitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_primitem_url(@primitem)
    assert_response :success
  end

  test "should update primitem" do
    patch primitem_url(@primitem), params: { primitem: { CreatorID: @primitem.CreatorID, assetID: @primitem.assetID, assetType: @primitem.assetType, basePermissions: @primitem.basePermissions, creationDate: @primitem.creationDate, currentPermissions: @primitem.currentPermissions, description: @primitem.description, everyonePermissions: @primitem.everyonePermissions, flags: @primitem.flags, groupID: @primitem.groupID, groupPermissions: @primitem.groupPermissions, invType: @primitem.invType, lastOwnerID: @primitem.lastOwnerID, name: @primitem.name, nextPermissions: @primitem.nextPermissions, ownerID: @primitem.ownerID, parentFolderID: @primitem.parentFolderID, primID: @primitem.primID } }
    assert_redirected_to primitem_url(@primitem)
  end

  test "should destroy primitem" do
    assert_difference('Primitem.count', -1) do
      delete primitem_url(@primitem)
    end

    assert_redirected_to primitems_url
  end
end

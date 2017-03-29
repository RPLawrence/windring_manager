require 'test_helper'

class InventoryitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventoryitem = inventoryitems(:one)
  end

  test "should get index" do
    get inventoryitems_url
    assert_response :success
  end

  test "should get new" do
    get new_inventoryitem_url
    assert_response :success
  end

  test "should create inventoryitem" do
    assert_difference('Inventoryitem.count') do
      post inventoryitems_url, params: { inventoryitem: { assetID: @inventoryitem.assetID, assetType: @inventoryitem.assetType, avatarID: @inventoryitem.avatarID, creationDate: @inventoryitem.creationDate, creatorID: @inventoryitem.creatorID, flags: @inventoryitem.flags, groupID: @inventoryitem.groupID, groupOwned: @inventoryitem.groupOwned, invType: @inventoryitem.invType, inventoryBasePermissions: @inventoryitem.inventoryBasePermissions, inventoryCurrentPermissions: @inventoryitem.inventoryCurrentPermissions, inventoryDescription: @inventoryitem.inventoryDescription, inventoryEveryOnePermissions: @inventoryitem.inventoryEveryOnePermissions, inventoryGroupPermissions: @inventoryitem.inventoryGroupPermissions, inventoryName: @inventoryitem.inventoryName, inventoryNextPermissions: @inventoryitem.inventoryNextPermissions, parentFolderID: @inventoryitem.parentFolderID, salePrice: @inventoryitem.salePrice, saleType: @inventoryitem.saleType } }
    end

    assert_redirected_to inventoryitem_url(Inventoryitem.last)
  end

  test "should show inventoryitem" do
    get inventoryitem_url(@inventoryitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventoryitem_url(@inventoryitem)
    assert_response :success
  end

  test "should update inventoryitem" do
    patch inventoryitem_url(@inventoryitem), params: { inventoryitem: { assetID: @inventoryitem.assetID, assetType: @inventoryitem.assetType, avatarID: @inventoryitem.avatarID, creationDate: @inventoryitem.creationDate, creatorID: @inventoryitem.creatorID, flags: @inventoryitem.flags, groupID: @inventoryitem.groupID, groupOwned: @inventoryitem.groupOwned, invType: @inventoryitem.invType, inventoryBasePermissions: @inventoryitem.inventoryBasePermissions, inventoryCurrentPermissions: @inventoryitem.inventoryCurrentPermissions, inventoryDescription: @inventoryitem.inventoryDescription, inventoryEveryOnePermissions: @inventoryitem.inventoryEveryOnePermissions, inventoryGroupPermissions: @inventoryitem.inventoryGroupPermissions, inventoryName: @inventoryitem.inventoryName, inventoryNextPermissions: @inventoryitem.inventoryNextPermissions, parentFolderID: @inventoryitem.parentFolderID, salePrice: @inventoryitem.salePrice, saleType: @inventoryitem.saleType } }
    assert_redirected_to inventoryitem_url(@inventoryitem)
  end

  test "should destroy inventoryitem" do
    assert_difference('Inventoryitem.count', -1) do
      delete inventoryitem_url(@inventoryitem)
    end

    assert_redirected_to inventoryitems_url
  end
end

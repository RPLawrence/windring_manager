require 'test_helper'

class InventoryfoldersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventoryfolder = inventoryfolders(:one)
  end

  test "should get index" do
    get inventoryfolders_url
    assert_response :success
  end

  test "should get new" do
    get new_inventoryfolder_url
    assert_response :success
  end

  test "should create inventoryfolder" do
    assert_difference('Inventoryfolder.count') do
      post inventoryfolders_url, params: { inventoryfolder: { agentID: @inventoryfolder.agentID, folderName: @inventoryfolder.folderName, parentFolderID: @inventoryfolder.parentFolderID, type: @inventoryfolder.type, version: @inventoryfolder.version } }
    end

    assert_redirected_to inventoryfolder_url(Inventoryfolder.last)
  end

  test "should show inventoryfolder" do
    get inventoryfolder_url(@inventoryfolder)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventoryfolder_url(@inventoryfolder)
    assert_response :success
  end

  test "should update inventoryfolder" do
    patch inventoryfolder_url(@inventoryfolder), params: { inventoryfolder: { agentID: @inventoryfolder.agentID, folderName: @inventoryfolder.folderName, parentFolderID: @inventoryfolder.parentFolderID, type: @inventoryfolder.type, version: @inventoryfolder.version } }
    assert_redirected_to inventoryfolder_url(@inventoryfolder)
  end

  test "should destroy inventoryfolder" do
    assert_difference('Inventoryfolder.count', -1) do
      delete inventoryfolder_url(@inventoryfolder)
    end

    assert_redirected_to inventoryfolders_url
  end
end

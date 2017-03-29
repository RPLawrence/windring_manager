require 'test_helper'

class EstateManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estate_manager = estate_managers(:one)
  end

  test "should get index" do
    get estate_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_estate_manager_url
    assert_response :success
  end

  test "should create estate_manager" do
    assert_difference('EstateManager.count') do
      post estate_managers_url, params: { estate_manager: { EstateID: @estate_manager.EstateID, uuid: @estate_manager.uuid } }
    end

    assert_redirected_to estate_manager_url(EstateManager.last)
  end

  test "should show estate_manager" do
    get estate_manager_url(@estate_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_estate_manager_url(@estate_manager)
    assert_response :success
  end

  test "should update estate_manager" do
    patch estate_manager_url(@estate_manager), params: { estate_manager: { EstateID: @estate_manager.EstateID, uuid: @estate_manager.uuid } }
    assert_redirected_to estate_manager_url(@estate_manager)
  end

  test "should destroy estate_manager" do
    assert_difference('EstateManager.count', -1) do
      delete estate_manager_url(@estate_manager)
    end

    assert_redirected_to estate_managers_url
  end
end

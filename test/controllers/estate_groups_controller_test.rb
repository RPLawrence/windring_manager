require 'test_helper'

class EstateGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estate_group = estate_groups(:one)
  end

  test "should get index" do
    get estate_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_estate_group_url
    assert_response :success
  end

  test "should create estate_group" do
    assert_difference('EstateGroup.count') do
      post estate_groups_url, params: { estate_group: { EstateID: @estate_group.EstateID, uuid: @estate_group.uuid } }
    end

    assert_redirected_to estate_group_url(EstateGroup.last)
  end

  test "should show estate_group" do
    get estate_group_url(@estate_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_estate_group_url(@estate_group)
    assert_response :success
  end

  test "should update estate_group" do
    patch estate_group_url(@estate_group), params: { estate_group: { EstateID: @estate_group.EstateID, uuid: @estate_group.uuid } }
    assert_redirected_to estate_group_url(@estate_group)
  end

  test "should destroy estate_group" do
    assert_difference('EstateGroup.count', -1) do
      delete estate_group_url(@estate_group)
    end

    assert_redirected_to estate_groups_url
  end
end

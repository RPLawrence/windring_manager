require 'test_helper'

class EstateUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estate_user = estate_users(:one)
  end

  test "should get index" do
    get estate_users_url
    assert_response :success
  end

  test "should get new" do
    get new_estate_user_url
    assert_response :success
  end

  test "should create estate_user" do
    assert_difference('EstateUser.count') do
      post estate_users_url, params: { estate_user: { EstateID: @estate_user.EstateID, uuid: @estate_user.uuid } }
    end

    assert_redirected_to estate_user_url(EstateUser.last)
  end

  test "should show estate_user" do
    get estate_user_url(@estate_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_estate_user_url(@estate_user)
    assert_response :success
  end

  test "should update estate_user" do
    patch estate_user_url(@estate_user), params: { estate_user: { EstateID: @estate_user.EstateID, uuid: @estate_user.uuid } }
    assert_redirected_to estate_user_url(@estate_user)
  end

  test "should destroy estate_user" do
    assert_difference('EstateUser.count', -1) do
      delete estate_user_url(@estate_user)
    end

    assert_redirected_to estate_users_url
  end
end

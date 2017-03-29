require 'test_helper'

class GridUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grid_user = grid_users(:one)
  end

  test "should get index" do
    get grid_users_url
    assert_response :success
  end

  test "should get new" do
    get new_grid_user_url
    assert_response :success
  end

  test "should create grid_user" do
    assert_difference('GridUser.count') do
      post grid_users_url, params: { grid_user: { HomeLookAt: @grid_user.HomeLookAt, HomePosition: @grid_user.HomePosition, HomeRegionID: @grid_user.HomeRegionID, LastLookAt: @grid_user.LastLookAt, LastPosition: @grid_user.LastPosition, LastRegionID: @grid_user.LastRegionID, Login: @grid_user.Login, Logout: @grid_user.Logout, Online: @grid_user.Online } }
    end

    assert_redirected_to grid_user_url(GridUser.last)
  end

  test "should show grid_user" do
    get grid_user_url(@grid_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_grid_user_url(@grid_user)
    assert_response :success
  end

  test "should update grid_user" do
    patch grid_user_url(@grid_user), params: { grid_user: { HomeLookAt: @grid_user.HomeLookAt, HomePosition: @grid_user.HomePosition, HomeRegionID: @grid_user.HomeRegionID, LastLookAt: @grid_user.LastLookAt, LastPosition: @grid_user.LastPosition, LastRegionID: @grid_user.LastRegionID, Login: @grid_user.Login, Logout: @grid_user.Logout, Online: @grid_user.Online } }
    assert_redirected_to grid_user_url(@grid_user)
  end

  test "should destroy grid_user" do
    assert_difference('GridUser.count', -1) do
      delete grid_user_url(@grid_user)
    end

    assert_redirected_to grid_users_url
  end
end

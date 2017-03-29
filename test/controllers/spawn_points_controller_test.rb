require 'test_helper'

class SpawnPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spawn_point = spawn_points(:one)
  end

  test "should get index" do
    get spawn_points_url
    assert_response :success
  end

  test "should get new" do
    get new_spawn_point_url
    assert_response :success
  end

  test "should create spawn_point" do
    assert_difference('SpawnPoint.count') do
      post spawn_points_url, params: { spawn_point: { Distance: @spawn_point.Distance, Pitch: @spawn_point.Pitch, RegionID: @spawn_point.RegionID, Yaw: @spawn_point.Yaw } }
    end

    assert_redirected_to spawn_point_url(SpawnPoint.last)
  end

  test "should show spawn_point" do
    get spawn_point_url(@spawn_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_spawn_point_url(@spawn_point)
    assert_response :success
  end

  test "should update spawn_point" do
    patch spawn_point_url(@spawn_point), params: { spawn_point: { Distance: @spawn_point.Distance, Pitch: @spawn_point.Pitch, RegionID: @spawn_point.RegionID, Yaw: @spawn_point.Yaw } }
    assert_redirected_to spawn_point_url(@spawn_point)
  end

  test "should destroy spawn_point" do
    assert_difference('SpawnPoint.count', -1) do
      delete spawn_point_url(@spawn_point)
    end

    assert_redirected_to spawn_points_url
  end
end

require 'test_helper'

class EstateMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estate_map = estate_maps(:one)
  end

  test "should get index" do
    get estate_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_estate_map_url
    assert_response :success
  end

  test "should create estate_map" do
    assert_difference('EstateMap.count') do
      post estate_maps_url, params: { estate_map: { EstateID: @estate_map.EstateID } }
    end

    assert_redirected_to estate_map_url(EstateMap.last)
  end

  test "should show estate_map" do
    get estate_map_url(@estate_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_estate_map_url(@estate_map)
    assert_response :success
  end

  test "should update estate_map" do
    patch estate_map_url(@estate_map), params: { estate_map: { EstateID: @estate_map.EstateID } }
    assert_redirected_to estate_map_url(@estate_map)
  end

  test "should destroy estate_map" do
    assert_difference('EstateMap.count', -1) do
      delete estate_map_url(@estate_map)
    end

    assert_redirected_to estate_maps_url
  end
end

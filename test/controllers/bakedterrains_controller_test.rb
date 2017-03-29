require 'test_helper'

class BakedterrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bakedterrain = bakedterrains(:one)
  end

  test "should get index" do
    get bakedterrains_url
    assert_response :success
  end

  test "should get new" do
    get new_bakedterrain_url
    assert_response :success
  end

  test "should create bakedterrain" do
    assert_difference('Bakedterrain.count') do
      post bakedterrains_url, params: { bakedterrain: { Heightfield: @bakedterrain.Heightfield, RegionUUID: @bakedterrain.RegionUUID, Revision: @bakedterrain.Revision } }
    end

    assert_redirected_to bakedterrain_url(Bakedterrain.last)
  end

  test "should show bakedterrain" do
    get bakedterrain_url(@bakedterrain)
    assert_response :success
  end

  test "should get edit" do
    get edit_bakedterrain_url(@bakedterrain)
    assert_response :success
  end

  test "should update bakedterrain" do
    patch bakedterrain_url(@bakedterrain), params: { bakedterrain: { Heightfield: @bakedterrain.Heightfield, RegionUUID: @bakedterrain.RegionUUID, Revision: @bakedterrain.Revision } }
    assert_redirected_to bakedterrain_url(@bakedterrain)
  end

  test "should destroy bakedterrain" do
    assert_difference('Bakedterrain.count', -1) do
      delete bakedterrain_url(@bakedterrain)
    end

    assert_redirected_to bakedterrains_url
  end
end

require 'test_helper'

class RegionsettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regionsetting = regionsettings(:one)
  end

  test "should get index" do
    get regionsettings_url
    assert_response :success
  end

  test "should get new" do
    get new_regionsetting_url
    assert_response :success
  end

  test "should create regionsetting" do
    assert_difference('Regionsetting.count') do
      post regionsettings_url, params: { regionsetting: { Sandbox: @regionsetting.Sandbox, TelehubObject: @regionsetting.TelehubObject, agent_limit: @regionsetting.agent_limit, allow_damage: @regionsetting.allow_damage, allow_land_join_divide: @regionsetting.allow_land_join_divide, allow_land_resell: @regionsetting.allow_land_resell, block_fly: @regionsetting.block_fly, block_search: @regionsetting.block_search, block_show_in_search: @regionsetting.block_show_in_search, block_terraform: @regionsetting.block_terraform, casino: @regionsetting.casino, covenant: @regionsetting.covenant, covenant_datetime: @regionsetting.covenant_datetime, disable_collisions: @regionsetting.disable_collisions, disable_physics: @regionsetting.disable_physics, disable_scripts: @regionsetting.disable_scripts, elevation_1_ne: @regionsetting.elevation_1_ne, elevation_1_nw: @regionsetting.elevation_1_nw, elevation_1_se: @regionsetting.elevation_1_se, elevation_1_sw: @regionsetting.elevation_1_sw, elevation_2_ne: @regionsetting.elevation_2_ne, elevation_2_nw: @regionsetting.elevation_2_nw, elevation_2_se: @regionsetting.elevation_2_se, elevation_2_sw: @regionsetting.elevation_2_sw, fixed_sun: @regionsetting.fixed_sun, loaded_creation_datetime: @regionsetting.loaded_creation_datetime, loaded_creation_id: @regionsetting.loaded_creation_id, map_tile_ID: @regionsetting.map_tile_ID, maturity: @regionsetting.maturity, object_bonus: @regionsetting.object_bonus, parcel_tile_ID: @regionsetting.parcel_tile_ID, restrict_pushing: @regionsetting.restrict_pushing, sun_position: @regionsetting.sun_position, sunvectorx: @regionsetting.sunvectorx, sunvectory: @regionsetting.sunvectory, sunvectorz: @regionsetting.sunvectorz, terrain_lower_limit: @regionsetting.terrain_lower_limit, terrain_raise_limit: @regionsetting.terrain_raise_limit, terrain_texture_1: @regionsetting.terrain_texture_1, terrain_texture_2: @regionsetting.terrain_texture_2, terrain_texture_3: @regionsetting.terrain_texture_3, terrain_texture_4: @regionsetting.terrain_texture_4, use_estate_sun: @regionsetting.use_estate_sun, water_height: @regionsetting.water_height } }
    end

    assert_redirected_to regionsetting_url(Regionsetting.last)
  end

  test "should show regionsetting" do
    get regionsetting_url(@regionsetting)
    assert_response :success
  end

  test "should get edit" do
    get edit_regionsetting_url(@regionsetting)
    assert_response :success
  end

  test "should update regionsetting" do
    patch regionsetting_url(@regionsetting), params: { regionsetting: { Sandbox: @regionsetting.Sandbox, TelehubObject: @regionsetting.TelehubObject, agent_limit: @regionsetting.agent_limit, allow_damage: @regionsetting.allow_damage, allow_land_join_divide: @regionsetting.allow_land_join_divide, allow_land_resell: @regionsetting.allow_land_resell, block_fly: @regionsetting.block_fly, block_search: @regionsetting.block_search, block_show_in_search: @regionsetting.block_show_in_search, block_terraform: @regionsetting.block_terraform, casino: @regionsetting.casino, covenant: @regionsetting.covenant, covenant_datetime: @regionsetting.covenant_datetime, disable_collisions: @regionsetting.disable_collisions, disable_physics: @regionsetting.disable_physics, disable_scripts: @regionsetting.disable_scripts, elevation_1_ne: @regionsetting.elevation_1_ne, elevation_1_nw: @regionsetting.elevation_1_nw, elevation_1_se: @regionsetting.elevation_1_se, elevation_1_sw: @regionsetting.elevation_1_sw, elevation_2_ne: @regionsetting.elevation_2_ne, elevation_2_nw: @regionsetting.elevation_2_nw, elevation_2_se: @regionsetting.elevation_2_se, elevation_2_sw: @regionsetting.elevation_2_sw, fixed_sun: @regionsetting.fixed_sun, loaded_creation_datetime: @regionsetting.loaded_creation_datetime, loaded_creation_id: @regionsetting.loaded_creation_id, map_tile_ID: @regionsetting.map_tile_ID, maturity: @regionsetting.maturity, object_bonus: @regionsetting.object_bonus, parcel_tile_ID: @regionsetting.parcel_tile_ID, restrict_pushing: @regionsetting.restrict_pushing, sun_position: @regionsetting.sun_position, sunvectorx: @regionsetting.sunvectorx, sunvectory: @regionsetting.sunvectory, sunvectorz: @regionsetting.sunvectorz, terrain_lower_limit: @regionsetting.terrain_lower_limit, terrain_raise_limit: @regionsetting.terrain_raise_limit, terrain_texture_1: @regionsetting.terrain_texture_1, terrain_texture_2: @regionsetting.terrain_texture_2, terrain_texture_3: @regionsetting.terrain_texture_3, terrain_texture_4: @regionsetting.terrain_texture_4, use_estate_sun: @regionsetting.use_estate_sun, water_height: @regionsetting.water_height } }
    assert_redirected_to regionsetting_url(@regionsetting)
  end

  test "should destroy regionsetting" do
    assert_difference('Regionsetting.count', -1) do
      delete regionsetting_url(@regionsetting)
    end

    assert_redirected_to regionsettings_url
  end
end

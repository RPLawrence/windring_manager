require 'test_helper'

class RegionwindlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regionwindlight = regionwindlights(:one)
  end

  test "should get index" do
    get regionwindlights_url
    assert_response :success
  end

  test "should get new" do
    get new_regionwindlight_url
    assert_response :success
  end

  test "should create regionwindlight" do
    assert_difference('Regionwindlight.count') do
      post regionwindlights_url, params: { regionwindlight: { ambient_b: @regionwindlight.ambient_b, ambient_g: @regionwindlight.ambient_g, ambient_i: @regionwindlight.ambient_i, ambient_r: @regionwindlight.ambient_r, big_wave_direction_x: @regionwindlight.big_wave_direction_x, big_wave_direction_y: @regionwindlight.big_wave_direction_y, blue_density_b: @regionwindlight.blue_density_b, blue_density_g: @regionwindlight.blue_density_g, blue_density_i: @regionwindlight.blue_density_i, blue_density_r: @regionwindlight.blue_density_r, blur_multiplier: @regionwindlight.blur_multiplier, cloud_color_b: @regionwindlight.cloud_color_b, cloud_color_g: @regionwindlight.cloud_color_g, cloud_color_i: @regionwindlight.cloud_color_i, cloud_color_r: @regionwindlight.cloud_color_r, cloud_coverage: @regionwindlight.cloud_coverage, cloud_density: @regionwindlight.cloud_density, cloud_detail_density: @regionwindlight.cloud_detail_density, cloud_detail_x: @regionwindlight.cloud_detail_x, cloud_detail_y: @regionwindlight.cloud_detail_y, cloud_scale: @regionwindlight.cloud_scale, cloud_scroll_x: @regionwindlight.cloud_scroll_x, cloud_scroll_x_lock: @regionwindlight.cloud_scroll_x_lock, cloud_scroll_y: @regionwindlight.cloud_scroll_y, cloud_scroll_y_lock: @regionwindlight.cloud_scroll_y_lock, cloud_x: @regionwindlight.cloud_x, cloud_y: @regionwindlight.cloud_y, density_multiplier: @regionwindlight.density_multiplier, distance_multiplier: @regionwindlight.distance_multiplier, draw_classic_clouds: @regionwindlight.draw_classic_clouds, east_angle: @regionwindlight.east_angle, fresnel_offset: @regionwindlight.fresnel_offset, fresnel_scale: @regionwindlight.fresnel_scale, haze_density: @regionwindlight.haze_density, haze_horizon: @regionwindlight.haze_horizon, horizon_b: @regionwindlight.horizon_b, horizon_g: @regionwindlight.horizon_g, horizon_i: @regionwindlight.horizon_i, horizon_r: @regionwindlight.horizon_r, little_wave_direction_x: @regionwindlight.little_wave_direction_x, little_wave_direction_y: @regionwindlight.little_wave_direction_y, max_altitude: @regionwindlight.max_altitude, normal_map_texture: @regionwindlight.normal_map_texture, reflection_wavelet_scale_1: @regionwindlight.reflection_wavelet_scale_1, reflection_wavelet_scale_2: @regionwindlight.reflection_wavelet_scale_2, reflection_wavelet_scale_3: @regionwindlight.reflection_wavelet_scale_3, refract_scale_above: @regionwindlight.refract_scale_above, refract_scale_below: @regionwindlight.refract_scale_below, scene_gamma: @regionwindlight.scene_gamma, star_brightness: @regionwindlight.star_brightness, sun_glow_focus: @regionwindlight.sun_glow_focus, sun_glow_size: @regionwindlight.sun_glow_size, sun_moon_color_b: @regionwindlight.sun_moon_color_b, sun_moon_color_g: @regionwindlight.sun_moon_color_g, sun_moon_color_i: @regionwindlight.sun_moon_color_i, sun_moon_color_r: @regionwindlight.sun_moon_color_r, sun_moon_position: @regionwindlight.sun_moon_position, underwater_fog_modifier: @regionwindlight.underwater_fog_modifier, water_color_b: @regionwindlight.water_color_b, water_color_g: @regionwindlight.water_color_g, water_color_r: @regionwindlight.water_color_r, water_fog_density_exponent: @regionwindlight.water_fog_density_exponent } }
    end

    assert_redirected_to regionwindlight_url(Regionwindlight.last)
  end

  test "should show regionwindlight" do
    get regionwindlight_url(@regionwindlight)
    assert_response :success
  end

  test "should get edit" do
    get edit_regionwindlight_url(@regionwindlight)
    assert_response :success
  end

  test "should update regionwindlight" do
    patch regionwindlight_url(@regionwindlight), params: { regionwindlight: { ambient_b: @regionwindlight.ambient_b, ambient_g: @regionwindlight.ambient_g, ambient_i: @regionwindlight.ambient_i, ambient_r: @regionwindlight.ambient_r, big_wave_direction_x: @regionwindlight.big_wave_direction_x, big_wave_direction_y: @regionwindlight.big_wave_direction_y, blue_density_b: @regionwindlight.blue_density_b, blue_density_g: @regionwindlight.blue_density_g, blue_density_i: @regionwindlight.blue_density_i, blue_density_r: @regionwindlight.blue_density_r, blur_multiplier: @regionwindlight.blur_multiplier, cloud_color_b: @regionwindlight.cloud_color_b, cloud_color_g: @regionwindlight.cloud_color_g, cloud_color_i: @regionwindlight.cloud_color_i, cloud_color_r: @regionwindlight.cloud_color_r, cloud_coverage: @regionwindlight.cloud_coverage, cloud_density: @regionwindlight.cloud_density, cloud_detail_density: @regionwindlight.cloud_detail_density, cloud_detail_x: @regionwindlight.cloud_detail_x, cloud_detail_y: @regionwindlight.cloud_detail_y, cloud_scale: @regionwindlight.cloud_scale, cloud_scroll_x: @regionwindlight.cloud_scroll_x, cloud_scroll_x_lock: @regionwindlight.cloud_scroll_x_lock, cloud_scroll_y: @regionwindlight.cloud_scroll_y, cloud_scroll_y_lock: @regionwindlight.cloud_scroll_y_lock, cloud_x: @regionwindlight.cloud_x, cloud_y: @regionwindlight.cloud_y, density_multiplier: @regionwindlight.density_multiplier, distance_multiplier: @regionwindlight.distance_multiplier, draw_classic_clouds: @regionwindlight.draw_classic_clouds, east_angle: @regionwindlight.east_angle, fresnel_offset: @regionwindlight.fresnel_offset, fresnel_scale: @regionwindlight.fresnel_scale, haze_density: @regionwindlight.haze_density, haze_horizon: @regionwindlight.haze_horizon, horizon_b: @regionwindlight.horizon_b, horizon_g: @regionwindlight.horizon_g, horizon_i: @regionwindlight.horizon_i, horizon_r: @regionwindlight.horizon_r, little_wave_direction_x: @regionwindlight.little_wave_direction_x, little_wave_direction_y: @regionwindlight.little_wave_direction_y, max_altitude: @regionwindlight.max_altitude, normal_map_texture: @regionwindlight.normal_map_texture, reflection_wavelet_scale_1: @regionwindlight.reflection_wavelet_scale_1, reflection_wavelet_scale_2: @regionwindlight.reflection_wavelet_scale_2, reflection_wavelet_scale_3: @regionwindlight.reflection_wavelet_scale_3, refract_scale_above: @regionwindlight.refract_scale_above, refract_scale_below: @regionwindlight.refract_scale_below, scene_gamma: @regionwindlight.scene_gamma, star_brightness: @regionwindlight.star_brightness, sun_glow_focus: @regionwindlight.sun_glow_focus, sun_glow_size: @regionwindlight.sun_glow_size, sun_moon_color_b: @regionwindlight.sun_moon_color_b, sun_moon_color_g: @regionwindlight.sun_moon_color_g, sun_moon_color_i: @regionwindlight.sun_moon_color_i, sun_moon_color_r: @regionwindlight.sun_moon_color_r, sun_moon_position: @regionwindlight.sun_moon_position, underwater_fog_modifier: @regionwindlight.underwater_fog_modifier, water_color_b: @regionwindlight.water_color_b, water_color_g: @regionwindlight.water_color_g, water_color_r: @regionwindlight.water_color_r, water_fog_density_exponent: @regionwindlight.water_fog_density_exponent } }
    assert_redirected_to regionwindlight_url(@regionwindlight)
  end

  test "should destroy regionwindlight" do
    assert_difference('Regionwindlight.count', -1) do
      delete regionwindlight_url(@regionwindlight)
    end

    assert_redirected_to regionwindlights_url
  end
end

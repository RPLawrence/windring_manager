# == Schema Information
#
# Table name: regionwindlight
#
#  region_id                  :string(36)       default("000000-0000-0000-0000-000000000000"), not null, primary key
#  water_color_r              :float(24)        default("4.000000"), not null
#  water_color_g              :float(24)        default("38.000000"), not null
#  water_color_b              :float(24)        default("64.000000"), not null
#  water_fog_density_exponent :float(24)        default("4.0000000"), not null
#  underwater_fog_modifier    :float(24)        default("0.25000000"), not null
#  reflection_wavelet_scale_1 :float(24)        default("2.0000000"), not null
#  reflection_wavelet_scale_2 :float(24)        default("2.0000000"), not null
#  reflection_wavelet_scale_3 :float(24)        default("2.0000000"), not null
#  fresnel_scale              :float(24)        default("0.40000001"), not null
#  fresnel_offset             :float(24)        default("0.50000000"), not null
#  refract_scale_above        :float(24)        default("0.03000000"), not null
#  refract_scale_below        :float(24)        default("0.20000000"), not null
#  blur_multiplier            :float(24)        default("0.04000000"), not null
#  big_wave_direction_x       :float(24)        default("1.04999995"), not null
#  big_wave_direction_y       :float(24)        default("-0.41999999"), not null
#  little_wave_direction_x    :float(24)        default("1.11000001"), not null
#  little_wave_direction_y    :float(24)        default("-1.15999997"), not null
#  normal_map_texture         :string(36)       default("822ded49-9a6c-f61c-cb89-6df54f42cdf4"), not null
#  horizon_r                  :float(24)        default("0.25000000"), not null
#  horizon_g                  :float(24)        default("0.25000000"), not null
#  horizon_b                  :float(24)        default("0.31999999"), not null
#  horizon_i                  :float(24)        default("0.31999999"), not null
#  haze_horizon               :float(24)        default("0.19000000"), not null
#  blue_density_r             :float(24)        default("0.12000000"), not null
#  blue_density_g             :float(24)        default("0.22000000"), not null
#  blue_density_b             :float(24)        default("0.38000000"), not null
#  blue_density_i             :float(24)        default("0.38000000"), not null
#  haze_density               :float(24)        default("0.69999999"), not null
#  density_multiplier         :float(24)        default("0.18000001"), not null
#  distance_multiplier        :float(24)        default("0.800000"), not null
#  max_altitude               :integer          default("1605"), not null
#  sun_moon_color_r           :float(24)        default("0.23999999"), not null
#  sun_moon_color_g           :float(24)        default("0.25999999"), not null
#  sun_moon_color_b           :float(24)        default("0.30000001"), not null
#  sun_moon_color_i           :float(24)        default("0.30000001"), not null
#  sun_moon_position          :float(24)        default("0.31700000"), not null
#  ambient_r                  :float(24)        default("0.34999999"), not null
#  ambient_g                  :float(24)        default("0.34999999"), not null
#  ambient_b                  :float(24)        default("0.34999999"), not null
#  ambient_i                  :float(24)        default("0.34999999"), not null
#  east_angle                 :float(24)        default("0.00000000"), not null
#  sun_glow_focus             :float(24)        default("0.10000000"), not null
#  sun_glow_size              :float(24)        default("1.75000000"), not null
#  scene_gamma                :float(24)        default("1.0000000"), not null
#  star_brightness            :float(24)        default("0.00000000"), not null
#  cloud_color_r              :float(24)        default("0.41000000"), not null
#  cloud_color_g              :float(24)        default("0.41000000"), not null
#  cloud_color_b              :float(24)        default("0.41000000"), not null
#  cloud_color_i              :float(24)        default("0.41000000"), not null
#  cloud_x                    :float(24)        default("1.00000000"), not null
#  cloud_y                    :float(24)        default("0.52999997"), not null
#  cloud_density              :float(24)        default("1.00000000"), not null
#  cloud_coverage             :float(24)        default("0.27000001"), not null
#  cloud_scale                :float(24)        default("0.41999999"), not null
#  cloud_detail_x             :float(24)        default("1.00000000"), not null
#  cloud_detail_y             :float(24)        default("0.52999997"), not null
#  cloud_detail_density       :float(24)        default("0.12000000"), not null
#  cloud_scroll_x             :float(24)        default("0.2000000"), not null
#  cloud_scroll_x_lock        :boolean          default("0"), not null
#  cloud_scroll_y             :float(24)        default("0.0100000"), not null
#  cloud_scroll_y_lock        :boolean          default("0"), not null
#  draw_classic_clouds        :boolean          default("1"), not null
#

class Regionwindlight < ApplicationRecord
  self.table_name = "regionwindlight"
end

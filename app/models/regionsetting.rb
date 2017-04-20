# == Schema Information
#
# Table name: regionsettings
#
#  regionUUID               :string(36)       not null, primary key
#  block_terraform          :integer          not null
#  block_fly                :integer          not null
#  allow_damage             :integer          not null
#  restrict_pushing         :integer          not null
#  allow_land_resell        :integer          not null
#  allow_land_join_divide   :integer          not null
#  block_show_in_search     :integer          not null
#  agent_limit              :integer          not null
#  object_bonus             :float(53)        not null
#  maturity                 :integer          not null
#  disable_scripts          :integer          not null
#  disable_collisions       :integer          not null
#  disable_physics          :integer          not null
#  terrain_texture_1        :string(36)       not null
#  terrain_texture_2        :string(36)       not null
#  terrain_texture_3        :string(36)       not null
#  terrain_texture_4        :string(36)       not null
#  elevation_1_nw           :float(53)        not null
#  elevation_2_nw           :float(53)        not null
#  elevation_1_ne           :float(53)        not null
#  elevation_2_ne           :float(53)        not null
#  elevation_1_se           :float(53)        not null
#  elevation_2_se           :float(53)        not null
#  elevation_1_sw           :float(53)        not null
#  elevation_2_sw           :float(53)        not null
#  water_height             :float(53)        not null
#  terrain_raise_limit      :float(53)        not null
#  terrain_lower_limit      :float(53)        not null
#  use_estate_sun           :integer          not null
#  fixed_sun                :integer          not null
#  sun_position             :float(53)        not null
#  covenant                 :string(36)
#  Sandbox                  :integer          not null
#  sunvectorx               :float(53)        default("0"), not null
#  sunvectory               :float(53)        default("0"), not null
#  sunvectorz               :float(53)        default("0"), not null
#  loaded_creation_id       :string(64)
#  loaded_creation_datetime :integer          default("0"), not null
#  map_tile_ID              :string(36)       default("00000000-0000-0000-0000-000000000000"), not null
#  TelehubObject            :string(36)       default("00000000-0000-0000-0000-000000000000"), not null
#  parcel_tile_ID           :string(36)       default("00000000-0000-0000-0000-000000000000"), not null
#  covenant_datetime        :integer          default("0"), not null
#  block_search             :integer          default("0"), not null
#  casino                   :integer          default("0"), not null
#

class Regionsetting < ApplicationRecord
  belongs_to :loaded_creation
end

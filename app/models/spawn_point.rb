# == Schema Information
#
# Table name: spawn_points
#
#  RegionID :string(36)       not null
#  Yaw      :float(24)        not null
#  Pitch    :float(24)        not null
#  Distance :float(24)        not null
#

class SpawnPoint < ApplicationRecord
end

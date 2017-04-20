# == Schema Information
#
# Table name: terrain
#
#  RegionUUID  :string(255)
#  Revision    :integer
#  Heightfield :binary(429496729
#

class Terrain < ApplicationRecord
  self.table_name = "terrain"
end

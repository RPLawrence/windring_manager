# == Schema Information
#
# Table name: bakedterrain
#
#  RegionUUID  :string(255)
#  Revision    :integer
#  Heightfield :binary(429496729
#

class Bakedterrain < ApplicationRecord
  self.table_name = "bakedterrain"
end

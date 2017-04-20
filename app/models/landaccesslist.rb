# == Schema Information
#
# Table name: landaccesslist
#
#  LandUUID   :string(255)
#  AccessUUID :string(255)
#  Flags      :integer
#  Expires    :integer          default("0"), not null
#

class Landaccesslist < ApplicationRecord
  self.table_name = "landaccesslist"
end

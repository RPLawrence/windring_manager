# == Schema Information
#
# Table name: estate_map
#
#  RegionID :string(36)       default("00000000-0000-0000-0000-000000000000"), not null, primary key
#  EstateID :integer          not null
#

class EstateMap < ApplicationRecord
  self.table_name = "estate_map"
end

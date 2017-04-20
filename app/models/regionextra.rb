# == Schema Information
#
# Table name: regionextra
#
#  RegionID :string(36)       not null
#  Name     :string(32)       not null
#  value    :text(65535)
#

class Regionextra < ApplicationRecord
  self.table_name = "regionextra"
end

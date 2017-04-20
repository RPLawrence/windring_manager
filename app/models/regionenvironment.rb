# == Schema Information
#
# Table name: regionenvironment
#
#  region_id     :string(36)       not null, primary key
#  llsd_settings :text(65535)      not null
#

class Regionenvironment < ApplicationRecord
  self.table_name = "regionenvironment"
end

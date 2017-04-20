# == Schema Information
#
# Table name: im_offline
#
#  ID          :integer          not null, primary key
#  PrincipalID :string(36)       default(""), not null
#  FromID      :string(36)       default(""), not null
#  Message     :text(16777215)   not null
#  TMStamp     :datetime         not null
#

class ImOffline < ApplicationRecord
  self.table_name = "im_offline"
end

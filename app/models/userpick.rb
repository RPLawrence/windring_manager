# == Schema Information
#
# Table name: userpicks
#
#  pickuuid     :string(36)       not null, primary key
#  creatoruuid  :string(36)       not null
#  toppick      :string(5)        not null
#  parceluuid   :string(36)       not null
#  name         :string(255)      not null
#  description  :text(65535)      not null
#  snapshotuuid :string(36)       not null
#  user         :string(255)      not null
#  originalname :string(255)      not null
#  simname      :string(255)      not null
#  posglobal    :string(255)      not null
#  sortorder    :integer          not null
#  enabled      :string(5)        not null
#  gatekeeper   :string(255)
#

class Userpick < ApplicationRecord
end

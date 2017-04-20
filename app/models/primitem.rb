# == Schema Information
#
# Table name: primitems
#
#  invType             :integer
#  assetType           :integer
#  name                :string(255)
#  description         :string(255)
#  creationDate        :integer
#  nextPermissions     :integer
#  currentPermissions  :integer
#  basePermissions     :integer
#  everyonePermissions :integer
#  groupPermissions    :integer
#  flags               :integer          default("0"), not null
#  itemID              :string(36)       default(""), not null, primary key
#  primID              :string(36)
#  assetID             :string(36)
#  parentFolderID      :string(36)
#  CreatorID           :string(255)      default(""), not null
#  ownerID             :string(36)
#  groupID             :string(36)
#  lastOwnerID         :string(36)
#

class Primitem < ApplicationRecord
end

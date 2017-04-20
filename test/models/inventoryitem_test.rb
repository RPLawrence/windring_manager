# == Schema Information
#
# Table name: inventoryitems
#
#  assetID                      :string(36)
#  assetType                    :integer
#  inventoryName                :string(64)
#  inventoryDescription         :string(128)
#  inventoryNextPermissions     :integer
#  inventoryCurrentPermissions  :integer
#  invType                      :integer
#  creatorID                    :string(255)      default("00000000-0000-0000-0000-000000000000"), not null
#  inventoryBasePermissions     :integer          default("0"), not null
#  inventoryEveryOnePermissions :integer          default("0"), not null
#  salePrice                    :integer          default("0"), not null
#  saleType                     :integer          default("0"), not null
#  creationDate                 :integer          default("0"), not null
#  groupID                      :string(36)       default("00000000-0000-0000-0000-000000000000"), not null
#  groupOwned                   :integer          default("0"), not null
#  flags                        :integer          default("0"), not null
#  inventoryGroupPermissions    :integer          default("0"), not null
#  inventoryID                  :string(36)       default("00000000-0000-0000-0000-000000000000"), not null, primary key
#  avatarID                     :string(36)
#  parentFolderID               :string(36)
#

require 'test_helper'

class InventoryitemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

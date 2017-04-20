# == Schema Information
#
# Table name: inventoryfolders
#
#  folderName     :string(64)
#  type           :integer          default("0"), not null
#  version        :integer          default("0"), not null
#  folderID       :string(36)       default("00000000-0000-0000-0000-000000000000"), not null, primary key
#  agentID        :string(36)
#  parentFolderID :string(36)
#

require 'test_helper'

class InventoryfolderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

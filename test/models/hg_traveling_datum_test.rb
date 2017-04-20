# == Schema Information
#
# Table name: hg_traveling_data
#
#  SessionID        :string(36)       not null, primary key
#  UserID           :string(36)       not null
#  GridExternalName :string(255)      default(""), not null
#  ServiceToken     :string(255)      default(""), not null
#  ClientIPAddress  :string(16)       default(""), not null
#  MyIPAddress      :string(16)       default(""), not null
#  TMStamp          :datetime         not null
#

require 'test_helper'

class HgTravelingDatumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: usernotes
#
#  useruuid   :string(36)       not null
#  targetuuid :string(36)       not null
#  notes      :text(65535)      not null
#

require 'test_helper'

class UsernoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

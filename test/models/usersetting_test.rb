# == Schema Information
#
# Table name: usersettings
#
#  useruuid   :string(36)       not null, primary key
#  imviaemail :string(5)        not null
#  visible    :string(5)        not null
#  email      :string(254)      not null
#

require 'test_helper'

class UsersettingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

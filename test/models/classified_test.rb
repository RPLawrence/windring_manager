# == Schema Information
#
# Table name: classifieds
#
#  classifieduuid  :string(36)       not null, primary key
#  creatoruuid     :string(36)       not null
#  creationdate    :integer          not null
#  expirationdate  :integer          not null
#  category        :string(20)       not null
#  name            :string(255)      not null
#  description     :text(65535)      not null
#  parceluuid      :string(36)       not null
#  parentestate    :integer          not null
#  snapshotuuid    :string(36)       not null
#  simname         :string(255)      not null
#  posglobal       :string(255)      not null
#  parcelname      :string(255)      not null
#  classifiedflags :integer          not null
#  priceforlisting :integer          not null
#

require 'test_helper'

class ClassifiedTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

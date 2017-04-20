# == Schema Information
#
# Table name: os_groups_notices
#
#  GroupID           :string(36)       default(""), not null
#  NoticeID          :string(36)       default(""), not null, primary key
#  TMStamp           :integer          default("0"), not null
#  FromName          :string(255)      default(""), not null
#  Subject           :string(255)      default(""), not null
#  Message           :text(65535)      not null
#  HasAttachment     :integer          default("0"), not null
#  AttachmentType    :integer          default("0"), not null
#  AttachmentName    :string(128)      default(""), not null
#  AttachmentItemID  :string(36)       default(""), not null
#  AttachmentOwnerID :string(255)      default(""), not null
#

require 'test_helper'

class OsGroupsNoticeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

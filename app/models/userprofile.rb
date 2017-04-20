# == Schema Information
#
# Table name: userprofile
#
#  useruuid             :string(36)       not null, primary key
#  profilePartner       :string(36)       not null
#  profileAllowPublish  :binary(1)        not null
#  profileMaturePublish :binary(1)        not null
#  profileURL           :string(255)      not null
#  profileWantToMask    :integer          not null
#  profileWantToText    :text(65535)      not null
#  profileSkillsMask    :integer          not null
#  profileSkillsText    :text(65535)      not null
#  profileLanguages     :text(65535)      not null
#  profileImage         :string(36)       not null
#  profileAboutText     :text(65535)      not null
#  profileFirstImage    :string(36)       not null
#  profileFirstText     :text(65535)      not null
#

class Userprofile < ApplicationRecord
  self.table_name = "userprofile"
end

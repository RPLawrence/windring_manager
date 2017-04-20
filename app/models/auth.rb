# == Schema Information
#
# Table name: auth
#
#  UUID         :string(36)       not null, primary key
#  passwordHash :string(32)       default(""), not null
#  passwordSalt :string(32)       default(""), not null
#  webLoginKey  :string(255)      default(""), not null
#  accountType  :string(32)       default("UserAccount"), not null
#

class Auth < ApplicationRecord
  self.table_name = "auth"
  
end

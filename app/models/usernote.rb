# == Schema Information
#
# Table name: usernotes
#
#  useruuid   :string(36)       not null
#  targetuuid :string(36)       not null
#  notes      :text(65535)      not null
#

class Usernote < ApplicationRecord
end

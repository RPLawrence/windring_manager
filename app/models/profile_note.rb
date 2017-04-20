# == Schema Information
#
# Table name: profile_notes
#
#  useruuid   :string(36)       not null
#  targetuuid :string(36)       not null
#  notes      :text(65535)      not null
#

class ProfileNote < ApplicationRecord
end

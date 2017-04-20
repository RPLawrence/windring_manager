# == Schema Information
#
# Table name: tokens
#
#  UUID     :string(36)       not null
#  token    :string(255)      not null
#  validity :datetime         not null
#

class Token < ApplicationRecord
end

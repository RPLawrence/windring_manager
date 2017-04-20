# == Schema Information
#
# Table name: primshapes
#
#  Shape            :integer
#  ScaleX           :float(53)        default("0"), not null
#  ScaleY           :float(53)        default("0"), not null
#  ScaleZ           :float(53)        default("0"), not null
#  PCode            :integer
#  PathBegin        :integer
#  PathEnd          :integer
#  PathScaleX       :integer
#  PathScaleY       :integer
#  PathShearX       :integer
#  PathShearY       :integer
#  PathSkew         :integer
#  PathCurve        :integer
#  PathRadiusOffset :integer
#  PathRevolutions  :integer
#  PathTaperX       :integer
#  PathTaperY       :integer
#  PathTwist        :integer
#  PathTwistBegin   :integer
#  ProfileBegin     :integer
#  ProfileEnd       :integer
#  ProfileCurve     :integer
#  ProfileHollow    :integer
#  State            :integer
#  Texture          :binary(429496729
#  ExtraParams      :binary(429496729
#  UUID             :string(36)       default(""), not null, primary key
#  Media            :text(65535)
#  LastAttachPoint  :integer          default("0"), not null
#

class Primshape < ApplicationRecord
end

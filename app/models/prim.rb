# == Schema Information
#
# Table name: prims
#
#  CreationDate         :integer
#  Name                 :string(255)
#  Text                 :string(255)
#  Description          :string(255)
#  SitName              :string(255)
#  TouchName            :string(255)
#  ObjectFlags          :integer
#  OwnerMask            :integer
#  NextOwnerMask        :integer
#  GroupMask            :integer
#  EveryoneMask         :integer
#  BaseMask             :integer
#  PositionX            :float(53)
#  PositionY            :float(53)
#  PositionZ            :float(53)
#  GroupPositionX       :float(53)
#  GroupPositionY       :float(53)
#  GroupPositionZ       :float(53)
#  VelocityX            :float(53)
#  VelocityY            :float(53)
#  VelocityZ            :float(53)
#  AngularVelocityX     :float(53)
#  AngularVelocityY     :float(53)
#  AngularVelocityZ     :float(53)
#  AccelerationX        :float(53)
#  AccelerationY        :float(53)
#  AccelerationZ        :float(53)
#  RotationX            :float(53)
#  RotationY            :float(53)
#  RotationZ            :float(53)
#  RotationW            :float(53)
#  SitTargetOffsetX     :float(53)
#  SitTargetOffsetY     :float(53)
#  SitTargetOffsetZ     :float(53)
#  SitTargetOrientW     :float(53)
#  SitTargetOrientX     :float(53)
#  SitTargetOrientY     :float(53)
#  SitTargetOrientZ     :float(53)
#  UUID                 :string(36)       default(""), not null, primary key
#  RegionUUID           :string(36)
#  CreatorID            :string(255)      default(""), not null
#  OwnerID              :string(36)
#  GroupID              :string(36)
#  LastOwnerID          :string(36)
#  SceneGroupID         :string(36)
#  PayPrice             :integer          default("0"), not null
#  PayButton1           :integer          default("0"), not null
#  PayButton2           :integer          default("0"), not null
#  PayButton3           :integer          default("0"), not null
#  PayButton4           :integer          default("0"), not null
#  LoopedSound          :string(36)       default("00000000-0000-0000-0000-000000000000"), not null
#  LoopedSoundGain      :float(53)        default("0"), not null
#  TextureAnimation     :binary(65535)
#  OmegaX               :float(53)        default("0"), not null
#  OmegaY               :float(53)        default("0"), not null
#  OmegaZ               :float(53)        default("0"), not null
#  CameraEyeOffsetX     :float(53)        default("0"), not null
#  CameraEyeOffsetY     :float(53)        default("0"), not null
#  CameraEyeOffsetZ     :float(53)        default("0"), not null
#  CameraAtOffsetX      :float(53)        default("0"), not null
#  CameraAtOffsetY      :float(53)        default("0"), not null
#  CameraAtOffsetZ      :float(53)        default("0"), not null
#  ForceMouselook       :integer          default("0"), not null
#  ScriptAccessPin      :integer          default("0"), not null
#  AllowedDrop          :integer          default("0"), not null
#  DieAtEdge            :integer          default("0"), not null
#  SalePrice            :integer          default("10"), not null
#  SaleType             :integer          default("0"), not null
#  ColorR               :integer          default("0"), not null
#  ColorG               :integer          default("0"), not null
#  ColorB               :integer          default("0"), not null
#  ColorA               :integer          default("0"), not null
#  ParticleSystem       :binary(65535)
#  ClickAction          :integer          default("0"), not null
#  Material             :integer          default("3"), not null
#  CollisionSound       :string(36)       default("00000000-0000-0000-0000-000000000000"), not null
#  CollisionSoundVolume :float(53)        default("0"), not null
#  LinkNumber           :integer          default("0"), not null
#  PassTouches          :integer          default("0"), not null
#  MediaURL             :string(255)
#  DynAttrs             :text(65535)
#  PhysicsShapeType     :integer          default("0"), not null
#  Density              :float(53)        default("1000"), not null
#  GravityModifier      :float(53)        default("1"), not null
#  Friction             :float(53)        default("0.6"), not null
#  Restitution          :float(53)        default("0.5"), not null
#  KeyframeMotion       :binary(65535)
#  AttachedPosX         :float(53)        default("0")
#  AttachedPosY         :float(53)        default("0")
#  AttachedPosZ         :float(53)        default("0")
#  PassCollisions       :integer          default("0"), not null
#  Vehicle              :text(65535)
#  RotationAxisLocks    :integer          default("0"), not null
#  RezzerID             :string(36)
#  PhysInertia          :text(65535)
#

class Prim < ApplicationRecord
end

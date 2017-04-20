# == Schema Information
#
# Table name: regions
#
#  uuid                :string(36)       not null, primary key
#  regionHandle        :integer          not null
#  regionName          :string(128)
#  regionRecvKey       :string(128)
#  regionSendKey       :string(128)
#  regionSecret        :string(128)
#  regionDataURI       :string(255)
#  serverIP            :string(64)
#  serverPort          :integer
#  serverURI           :string(255)
#  locX                :integer
#  locY                :integer
#  locZ                :integer
#  eastOverrideHandle  :integer
#  westOverrideHandle  :integer
#  southOverrideHandle :integer
#  northOverrideHandle :integer
#  regionAssetURI      :string(255)
#  regionAssetRecvKey  :string(128)
#  regionAssetSendKey  :string(128)
#  regionUserURI       :string(255)
#  regionUserRecvKey   :string(128)
#  regionUserSendKey   :string(128)
#  regionMapTexture    :string(36)
#  serverHttpPort      :integer
#  serverRemotingPort  :integer
#  owner_uuid          :string(36)       default("00000000-0000-0000-0000-000000000000"), not null
#  originUUID          :string(36)
#  access              :integer          default("1")
#  ScopeID             :string(36)       default("00000000-0000-0000-0000-000000000000"), not null
#  sizeX               :integer          default("0"), not null
#  sizeY               :integer          default("0"), not null
#  flags               :integer          default("0"), not null
#  last_seen           :integer          default("0"), not null
#  PrincipalID         :string(36)       default("00000000-0000-0000-0000-000000000000"), not null
#  Token               :string(255)      not null
#  parcelMapTexture    :string(36)
#

class Region < ApplicationRecord
end

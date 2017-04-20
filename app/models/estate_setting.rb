# == Schema Information
#
# Table name: estate_settings
#
#  EstateID                :integer          not null, primary key
#  EstateName              :string(64)
#  AbuseEmailToEstateOwner :integer          not null
#  DenyAnonymous           :integer          not null
#  ResetHomeOnTeleport     :integer          not null
#  FixedSun                :integer          not null
#  DenyTransacted          :integer          not null
#  BlockDwell              :integer          not null
#  DenyIdentified          :integer          not null
#  AllowVoice              :integer          not null
#  UseGlobalTime           :integer          not null
#  PricePerMeter           :integer          not null
#  TaxFree                 :integer          not null
#  AllowDirectTeleport     :integer          not null
#  RedirectGridX           :integer          not null
#  RedirectGridY           :integer          not null
#  ParentEstateID          :integer          not null
#  SunPosition             :float(53)        not null
#  EstateSkipScripts       :integer          not null
#  BillableFactor          :float(24)        not null
#  PublicAccess            :integer          not null
#  AbuseEmail              :string(255)      not null
#  EstateOwner             :string(36)       not null
#  DenyMinors              :integer          not null
#  AllowLandmark           :integer          default("1"), not null
#  AllowParcelChanges      :integer          default("1"), not null
#  AllowSetHome            :integer          default("1"), not null
#

class EstateSetting < ApplicationRecord
end

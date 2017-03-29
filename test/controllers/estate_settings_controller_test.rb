require 'test_helper'

class EstateSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estate_setting = estate_settings(:one)
  end

  test "should get index" do
    get estate_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_estate_setting_url
    assert_response :success
  end

  test "should create estate_setting" do
    assert_difference('EstateSetting.count') do
      post estate_settings_url, params: { estate_setting: { AbuseEmail: @estate_setting.AbuseEmail, AbuseEmailToEstateOwner: @estate_setting.AbuseEmailToEstateOwner, AllowDirectTeleport: @estate_setting.AllowDirectTeleport, AllowLandmark: @estate_setting.AllowLandmark, AllowParcelChanges: @estate_setting.AllowParcelChanges, AllowSetHome: @estate_setting.AllowSetHome, AllowVoice: @estate_setting.AllowVoice, BillableFactor: @estate_setting.BillableFactor, BlockDwell: @estate_setting.BlockDwell, DenyAnonymous: @estate_setting.DenyAnonymous, DenyIdentified: @estate_setting.DenyIdentified, DenyMinors: @estate_setting.DenyMinors, DenyTransacted: @estate_setting.DenyTransacted, EstateName: @estate_setting.EstateName, EstateOwner: @estate_setting.EstateOwner, EstateSkipScripts: @estate_setting.EstateSkipScripts, FixedSun: @estate_setting.FixedSun, ParentEstateID: @estate_setting.ParentEstateID, PricePerMeter: @estate_setting.PricePerMeter, PublicAccess: @estate_setting.PublicAccess, RedirectGridX: @estate_setting.RedirectGridX, RedirectGridY: @estate_setting.RedirectGridY, ResetHomeOnTeleport: @estate_setting.ResetHomeOnTeleport, SunPosition: @estate_setting.SunPosition, TaxFree: @estate_setting.TaxFree, UseGlobalTime: @estate_setting.UseGlobalTime } }
    end

    assert_redirected_to estate_setting_url(EstateSetting.last)
  end

  test "should show estate_setting" do
    get estate_setting_url(@estate_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_estate_setting_url(@estate_setting)
    assert_response :success
  end

  test "should update estate_setting" do
    patch estate_setting_url(@estate_setting), params: { estate_setting: { AbuseEmail: @estate_setting.AbuseEmail, AbuseEmailToEstateOwner: @estate_setting.AbuseEmailToEstateOwner, AllowDirectTeleport: @estate_setting.AllowDirectTeleport, AllowLandmark: @estate_setting.AllowLandmark, AllowParcelChanges: @estate_setting.AllowParcelChanges, AllowSetHome: @estate_setting.AllowSetHome, AllowVoice: @estate_setting.AllowVoice, BillableFactor: @estate_setting.BillableFactor, BlockDwell: @estate_setting.BlockDwell, DenyAnonymous: @estate_setting.DenyAnonymous, DenyIdentified: @estate_setting.DenyIdentified, DenyMinors: @estate_setting.DenyMinors, DenyTransacted: @estate_setting.DenyTransacted, EstateName: @estate_setting.EstateName, EstateOwner: @estate_setting.EstateOwner, EstateSkipScripts: @estate_setting.EstateSkipScripts, FixedSun: @estate_setting.FixedSun, ParentEstateID: @estate_setting.ParentEstateID, PricePerMeter: @estate_setting.PricePerMeter, PublicAccess: @estate_setting.PublicAccess, RedirectGridX: @estate_setting.RedirectGridX, RedirectGridY: @estate_setting.RedirectGridY, ResetHomeOnTeleport: @estate_setting.ResetHomeOnTeleport, SunPosition: @estate_setting.SunPosition, TaxFree: @estate_setting.TaxFree, UseGlobalTime: @estate_setting.UseGlobalTime } }
    assert_redirected_to estate_setting_url(@estate_setting)
  end

  test "should destroy estate_setting" do
    assert_difference('EstateSetting.count', -1) do
      delete estate_setting_url(@estate_setting)
    end

    assert_redirected_to estate_settings_url
  end
end

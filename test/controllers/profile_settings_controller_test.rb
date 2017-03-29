require 'test_helper'

class ProfileSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_setting = profile_settings(:one)
  end

  test "should get index" do
    get profile_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_setting_url
    assert_response :success
  end

  test "should create profile_setting" do
    assert_difference('ProfileSetting.count') do
      post profile_settings_url, params: { profile_setting: { email: @profile_setting.email, imviaemail: @profile_setting.imviaemail, visible: @profile_setting.visible } }
    end

    assert_redirected_to profile_setting_url(ProfileSetting.last)
  end

  test "should show profile_setting" do
    get profile_setting_url(@profile_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_setting_url(@profile_setting)
    assert_response :success
  end

  test "should update profile_setting" do
    patch profile_setting_url(@profile_setting), params: { profile_setting: { email: @profile_setting.email, imviaemail: @profile_setting.imviaemail, visible: @profile_setting.visible } }
    assert_redirected_to profile_setting_url(@profile_setting)
  end

  test "should destroy profile_setting" do
    assert_difference('ProfileSetting.count', -1) do
      delete profile_setting_url(@profile_setting)
    end

    assert_redirected_to profile_settings_url
  end
end

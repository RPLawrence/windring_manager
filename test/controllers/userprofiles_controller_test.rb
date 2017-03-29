require 'test_helper'

class UserprofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userprofile = userprofiles(:one)
  end

  test "should get index" do
    get userprofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_userprofile_url
    assert_response :success
  end

  test "should create userprofile" do
    assert_difference('Userprofile.count') do
      post userprofiles_url, params: { userprofile: { profileAboutText: @userprofile.profileAboutText, profileAllowPublish: @userprofile.profileAllowPublish, profileFirstImage: @userprofile.profileFirstImage, profileFirstText: @userprofile.profileFirstText, profileImage: @userprofile.profileImage, profileLanguages: @userprofile.profileLanguages, profileMaturePublish: @userprofile.profileMaturePublish, profilePartner: @userprofile.profilePartner, profileSkillsMask: @userprofile.profileSkillsMask, profileSkillsText: @userprofile.profileSkillsText, profileURL: @userprofile.profileURL, profileWantToMask: @userprofile.profileWantToMask, profileWantToText: @userprofile.profileWantToText } }
    end

    assert_redirected_to userprofile_url(Userprofile.last)
  end

  test "should show userprofile" do
    get userprofile_url(@userprofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_userprofile_url(@userprofile)
    assert_response :success
  end

  test "should update userprofile" do
    patch userprofile_url(@userprofile), params: { userprofile: { profileAboutText: @userprofile.profileAboutText, profileAllowPublish: @userprofile.profileAllowPublish, profileFirstImage: @userprofile.profileFirstImage, profileFirstText: @userprofile.profileFirstText, profileImage: @userprofile.profileImage, profileLanguages: @userprofile.profileLanguages, profileMaturePublish: @userprofile.profileMaturePublish, profilePartner: @userprofile.profilePartner, profileSkillsMask: @userprofile.profileSkillsMask, profileSkillsText: @userprofile.profileSkillsText, profileURL: @userprofile.profileURL, profileWantToMask: @userprofile.profileWantToMask, profileWantToText: @userprofile.profileWantToText } }
    assert_redirected_to userprofile_url(@userprofile)
  end

  test "should destroy userprofile" do
    assert_difference('Userprofile.count', -1) do
      delete userprofile_url(@userprofile)
    end

    assert_redirected_to userprofiles_url
  end
end

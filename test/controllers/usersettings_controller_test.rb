require 'test_helper'

class UsersettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usersetting = usersettings(:one)
  end

  test "should get index" do
    get usersettings_url
    assert_response :success
  end

  test "should get new" do
    get new_usersetting_url
    assert_response :success
  end

  test "should create usersetting" do
    assert_difference('Usersetting.count') do
      post usersettings_url, params: { usersetting: { email: @usersetting.email, imviaemail: @usersetting.imviaemail, visible: @usersetting.visible } }
    end

    assert_redirected_to usersetting_url(Usersetting.last)
  end

  test "should show usersetting" do
    get usersetting_url(@usersetting)
    assert_response :success
  end

  test "should get edit" do
    get edit_usersetting_url(@usersetting)
    assert_response :success
  end

  test "should update usersetting" do
    patch usersetting_url(@usersetting), params: { usersetting: { email: @usersetting.email, imviaemail: @usersetting.imviaemail, visible: @usersetting.visible } }
    assert_redirected_to usersetting_url(@usersetting)
  end

  test "should destroy usersetting" do
    assert_difference('Usersetting.count', -1) do
      delete usersetting_url(@usersetting)
    end

    assert_redirected_to usersettings_url
  end
end

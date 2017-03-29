require 'test_helper'

class EstatebansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estateban = estatebans(:one)
  end

  test "should get index" do
    get estatebans_url
    assert_response :success
  end

  test "should get new" do
    get new_estateban_url
    assert_response :success
  end

  test "should create estateban" do
    assert_difference('Estateban.count') do
      post estatebans_url, params: { estateban: { EstateID: @estateban.EstateID, bannedIp: @estateban.bannedIp, bannedIpHostMask: @estateban.bannedIpHostMask, bannedNameMask: @estateban.bannedNameMask, bannedUUID: @estateban.bannedUUID } }
    end

    assert_redirected_to estateban_url(Estateban.last)
  end

  test "should show estateban" do
    get estateban_url(@estateban)
    assert_response :success
  end

  test "should get edit" do
    get edit_estateban_url(@estateban)
    assert_response :success
  end

  test "should update estateban" do
    patch estateban_url(@estateban), params: { estateban: { EstateID: @estateban.EstateID, bannedIp: @estateban.bannedIp, bannedIpHostMask: @estateban.bannedIpHostMask, bannedNameMask: @estateban.bannedNameMask, bannedUUID: @estateban.bannedUUID } }
    assert_redirected_to estateban_url(@estateban)
  end

  test "should destroy estateban" do
    assert_difference('Estateban.count', -1) do
      delete estateban_url(@estateban)
    end

    assert_redirected_to estatebans_url
  end
end

require 'test_helper'

class ImOfflinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @im_offline = im_offlines(:one)
  end

  test "should get index" do
    get im_offlines_url
    assert_response :success
  end

  test "should get new" do
    get new_im_offline_url
    assert_response :success
  end

  test "should create im_offline" do
    assert_difference('ImOffline.count') do
      post im_offlines_url, params: { im_offline: { FromID: @im_offline.FromID, Message: @im_offline.Message, PrincipalID: @im_offline.PrincipalID, TMStamp: @im_offline.TMStamp } }
    end

    assert_redirected_to im_offline_url(ImOffline.last)
  end

  test "should show im_offline" do
    get im_offline_url(@im_offline)
    assert_response :success
  end

  test "should get edit" do
    get edit_im_offline_url(@im_offline)
    assert_response :success
  end

  test "should update im_offline" do
    patch im_offline_url(@im_offline), params: { im_offline: { FromID: @im_offline.FromID, Message: @im_offline.Message, PrincipalID: @im_offline.PrincipalID, TMStamp: @im_offline.TMStamp } }
    assert_redirected_to im_offline_url(@im_offline)
  end

  test "should destroy im_offline" do
    assert_difference('ImOffline.count', -1) do
      delete im_offline_url(@im_offline)
    end

    assert_redirected_to im_offlines_url
  end
end

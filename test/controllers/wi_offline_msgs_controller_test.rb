require 'test_helper'

class WiOfflineMsgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wi_offline_msg = wi_offline_msgs(:one)
  end

  test "should get index" do
    get wi_offline_msgs_url
    assert_response :success
  end

  test "should get new" do
    get new_wi_offline_msg_url
    assert_response :success
  end

  test "should create wi_offline_msg" do
    assert_difference('WiOfflineMsg.count') do
      post wi_offline_msgs_url, params: { wi_offline_msg: { message: @wi_offline_msg.message, uuid: @wi_offline_msg.uuid } }
    end

    assert_redirected_to wi_offline_msg_url(WiOfflineMsg.last)
  end

  test "should show wi_offline_msg" do
    get wi_offline_msg_url(@wi_offline_msg)
    assert_response :success
  end

  test "should get edit" do
    get edit_wi_offline_msg_url(@wi_offline_msg)
    assert_response :success
  end

  test "should update wi_offline_msg" do
    patch wi_offline_msg_url(@wi_offline_msg), params: { wi_offline_msg: { message: @wi_offline_msg.message, uuid: @wi_offline_msg.uuid } }
    assert_redirected_to wi_offline_msg_url(@wi_offline_msg)
  end

  test "should destroy wi_offline_msg" do
    assert_difference('WiOfflineMsg.count', -1) do
      delete wi_offline_msg_url(@wi_offline_msg)
    end

    assert_redirected_to wi_offline_msgs_url
  end
end

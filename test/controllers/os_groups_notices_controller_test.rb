require 'test_helper'

class OsGroupsNoticesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_groups_notice = os_groups_notices(:one)
  end

  test "should get index" do
    get os_groups_notices_url
    assert_response :success
  end

  test "should get new" do
    get new_os_groups_notice_url
    assert_response :success
  end

  test "should create os_groups_notice" do
    assert_difference('OsGroupsNotice.count') do
      post os_groups_notices_url, params: { os_groups_notice: { AttachmentItemID: @os_groups_notice.AttachmentItemID, AttachmentName: @os_groups_notice.AttachmentName, AttachmentOwnerID: @os_groups_notice.AttachmentOwnerID, AttachmentType: @os_groups_notice.AttachmentType, FromName: @os_groups_notice.FromName, GroupID: @os_groups_notice.GroupID, HasAttachment: @os_groups_notice.HasAttachment, Message: @os_groups_notice.Message, Subject: @os_groups_notice.Subject, TMStamp: @os_groups_notice.TMStamp } }
    end

    assert_redirected_to os_groups_notice_url(OsGroupsNotice.last)
  end

  test "should show os_groups_notice" do
    get os_groups_notice_url(@os_groups_notice)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_groups_notice_url(@os_groups_notice)
    assert_response :success
  end

  test "should update os_groups_notice" do
    patch os_groups_notice_url(@os_groups_notice), params: { os_groups_notice: { AttachmentItemID: @os_groups_notice.AttachmentItemID, AttachmentName: @os_groups_notice.AttachmentName, AttachmentOwnerID: @os_groups_notice.AttachmentOwnerID, AttachmentType: @os_groups_notice.AttachmentType, FromName: @os_groups_notice.FromName, GroupID: @os_groups_notice.GroupID, HasAttachment: @os_groups_notice.HasAttachment, Message: @os_groups_notice.Message, Subject: @os_groups_notice.Subject, TMStamp: @os_groups_notice.TMStamp } }
    assert_redirected_to os_groups_notice_url(@os_groups_notice)
  end

  test "should destroy os_groups_notice" do
    assert_difference('OsGroupsNotice.count', -1) do
      delete os_groups_notice_url(@os_groups_notice)
    end

    assert_redirected_to os_groups_notices_url
  end
end

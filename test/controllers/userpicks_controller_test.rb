require 'test_helper'

class UserpicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userpick = userpicks(:one)
  end

  test "should get index" do
    get userpicks_url
    assert_response :success
  end

  test "should get new" do
    get new_userpick_url
    assert_response :success
  end

  test "should create userpick" do
    assert_difference('Userpick.count') do
      post userpicks_url, params: { userpick: { creatoruuid: @userpick.creatoruuid, description: @userpick.description, enabled: @userpick.enabled, gatekeeper: @userpick.gatekeeper, name: @userpick.name, originalname: @userpick.originalname, parceluuid: @userpick.parceluuid, posglobal: @userpick.posglobal, simname: @userpick.simname, snapshotuuid: @userpick.snapshotuuid, sortorder: @userpick.sortorder, toppick: @userpick.toppick, user: @userpick.user } }
    end

    assert_redirected_to userpick_url(Userpick.last)
  end

  test "should show userpick" do
    get userpick_url(@userpick)
    assert_response :success
  end

  test "should get edit" do
    get edit_userpick_url(@userpick)
    assert_response :success
  end

  test "should update userpick" do
    patch userpick_url(@userpick), params: { userpick: { creatoruuid: @userpick.creatoruuid, description: @userpick.description, enabled: @userpick.enabled, gatekeeper: @userpick.gatekeeper, name: @userpick.name, originalname: @userpick.originalname, parceluuid: @userpick.parceluuid, posglobal: @userpick.posglobal, simname: @userpick.simname, snapshotuuid: @userpick.snapshotuuid, sortorder: @userpick.sortorder, toppick: @userpick.toppick, user: @userpick.user } }
    assert_redirected_to userpick_url(@userpick)
  end

  test "should destroy userpick" do
    assert_difference('Userpick.count', -1) do
      delete userpick_url(@userpick)
    end

    assert_redirected_to userpicks_url
  end
end

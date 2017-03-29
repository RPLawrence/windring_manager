require 'test_helper'

class UsernotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usernote = usernotes(:one)
  end

  test "should get index" do
    get usernotes_url
    assert_response :success
  end

  test "should get new" do
    get new_usernote_url
    assert_response :success
  end

  test "should create usernote" do
    assert_difference('Usernote.count') do
      post usernotes_url, params: { usernote: { notes: @usernote.notes, targetuuid: @usernote.targetuuid, useruuid: @usernote.useruuid } }
    end

    assert_redirected_to usernote_url(Usernote.last)
  end

  test "should show usernote" do
    get usernote_url(@usernote)
    assert_response :success
  end

  test "should get edit" do
    get edit_usernote_url(@usernote)
    assert_response :success
  end

  test "should update usernote" do
    patch usernote_url(@usernote), params: { usernote: { notes: @usernote.notes, targetuuid: @usernote.targetuuid, useruuid: @usernote.useruuid } }
    assert_redirected_to usernote_url(@usernote)
  end

  test "should destroy usernote" do
    assert_difference('Usernote.count', -1) do
      delete usernote_url(@usernote)
    end

    assert_redirected_to usernotes_url
  end
end

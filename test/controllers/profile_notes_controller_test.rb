require 'test_helper'

class ProfileNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_note = profile_notes(:one)
  end

  test "should get index" do
    get profile_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_note_url
    assert_response :success
  end

  test "should create profile_note" do
    assert_difference('ProfileNote.count') do
      post profile_notes_url, params: { profile_note: { notes: @profile_note.notes, targetuuid: @profile_note.targetuuid, useruuid: @profile_note.useruuid } }
    end

    assert_redirected_to profile_note_url(ProfileNote.last)
  end

  test "should show profile_note" do
    get profile_note_url(@profile_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_note_url(@profile_note)
    assert_response :success
  end

  test "should update profile_note" do
    patch profile_note_url(@profile_note), params: { profile_note: { notes: @profile_note.notes, targetuuid: @profile_note.targetuuid, useruuid: @profile_note.useruuid } }
    assert_redirected_to profile_note_url(@profile_note)
  end

  test "should destroy profile_note" do
    assert_difference('ProfileNote.count', -1) do
      delete profile_note_url(@profile_note)
    end

    assert_redirected_to profile_notes_url
  end
end

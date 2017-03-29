require 'test_helper'

class ProfileClassifiedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_classified = profile_classifieds(:one)
  end

  test "should get index" do
    get profile_classifieds_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_classified_url
    assert_response :success
  end

  test "should create profile_classified" do
    assert_difference('ProfileClassified.count') do
      post profile_classifieds_url, params: { profile_classified: { category: @profile_classified.category, classifiedflags: @profile_classified.classifiedflags, creationdate: @profile_classified.creationdate, creatoruuid: @profile_classified.creatoruuid, description: @profile_classified.description, expirationdate: @profile_classified.expirationdate, name: @profile_classified.name, parcelname: @profile_classified.parcelname, parceluuid: @profile_classified.parceluuid, parentestate: @profile_classified.parentestate, posglobal: @profile_classified.posglobal, priceforlisting: @profile_classified.priceforlisting, simname: @profile_classified.simname, snapshotuuid: @profile_classified.snapshotuuid } }
    end

    assert_redirected_to profile_classified_url(ProfileClassified.last)
  end

  test "should show profile_classified" do
    get profile_classified_url(@profile_classified)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_classified_url(@profile_classified)
    assert_response :success
  end

  test "should update profile_classified" do
    patch profile_classified_url(@profile_classified), params: { profile_classified: { category: @profile_classified.category, classifiedflags: @profile_classified.classifiedflags, creationdate: @profile_classified.creationdate, creatoruuid: @profile_classified.creatoruuid, description: @profile_classified.description, expirationdate: @profile_classified.expirationdate, name: @profile_classified.name, parcelname: @profile_classified.parcelname, parceluuid: @profile_classified.parceluuid, parentestate: @profile_classified.parentestate, posglobal: @profile_classified.posglobal, priceforlisting: @profile_classified.priceforlisting, simname: @profile_classified.simname, snapshotuuid: @profile_classified.snapshotuuid } }
    assert_redirected_to profile_classified_url(@profile_classified)
  end

  test "should destroy profile_classified" do
    assert_difference('ProfileClassified.count', -1) do
      delete profile_classified_url(@profile_classified)
    end

    assert_redirected_to profile_classifieds_url
  end
end

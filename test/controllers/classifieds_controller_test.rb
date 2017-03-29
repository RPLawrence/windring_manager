require 'test_helper'

class ClassifiedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classified = classifieds(:one)
  end

  test "should get index" do
    get classifieds_url
    assert_response :success
  end

  test "should get new" do
    get new_classified_url
    assert_response :success
  end

  test "should create classified" do
    assert_difference('Classified.count') do
      post classifieds_url, params: { classified: { category: @classified.category, classifiedflags: @classified.classifiedflags, creationdate: @classified.creationdate, creatoruuid: @classified.creatoruuid, description: @classified.description, expirationdate: @classified.expirationdate, name: @classified.name, parcelname: @classified.parcelname, parceluuid: @classified.parceluuid, parentestate: @classified.parentestate, posglobal: @classified.posglobal, priceforlisting: @classified.priceforlisting, simname: @classified.simname, snapshotuuid: @classified.snapshotuuid } }
    end

    assert_redirected_to classified_url(Classified.last)
  end

  test "should show classified" do
    get classified_url(@classified)
    assert_response :success
  end

  test "should get edit" do
    get edit_classified_url(@classified)
    assert_response :success
  end

  test "should update classified" do
    patch classified_url(@classified), params: { classified: { category: @classified.category, classifiedflags: @classified.classifiedflags, creationdate: @classified.creationdate, creatoruuid: @classified.creatoruuid, description: @classified.description, expirationdate: @classified.expirationdate, name: @classified.name, parcelname: @classified.parcelname, parceluuid: @classified.parceluuid, parentestate: @classified.parentestate, posglobal: @classified.posglobal, priceforlisting: @classified.priceforlisting, simname: @classified.simname, snapshotuuid: @classified.snapshotuuid } }
    assert_redirected_to classified_url(@classified)
  end

  test "should destroy classified" do
    assert_difference('Classified.count', -1) do
      delete classified_url(@classified)
    end

    assert_redirected_to classifieds_url
  end
end

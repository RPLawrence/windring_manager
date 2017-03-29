require 'test_helper'

class RegionextrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regionextra = regionextras(:one)
  end

  test "should get index" do
    get regionextras_url
    assert_response :success
  end

  test "should get new" do
    get new_regionextra_url
    assert_response :success
  end

  test "should create regionextra" do
    assert_difference('Regionextra.count') do
      post regionextras_url, params: { regionextra: { Name: @regionextra.Name, RegionID: @regionextra.RegionID, value: @regionextra.value } }
    end

    assert_redirected_to regionextra_url(Regionextra.last)
  end

  test "should show regionextra" do
    get regionextra_url(@regionextra)
    assert_response :success
  end

  test "should get edit" do
    get edit_regionextra_url(@regionextra)
    assert_response :success
  end

  test "should update regionextra" do
    patch regionextra_url(@regionextra), params: { regionextra: { Name: @regionextra.Name, RegionID: @regionextra.RegionID, value: @regionextra.value } }
    assert_redirected_to regionextra_url(@regionextra)
  end

  test "should destroy regionextra" do
    assert_difference('Regionextra.count', -1) do
      delete regionextra_url(@regionextra)
    end

    assert_redirected_to regionextras_url
  end
end

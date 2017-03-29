require 'test_helper'

class RegionenvironmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regionenvironment = regionenvironments(:one)
  end

  test "should get index" do
    get regionenvironments_url
    assert_response :success
  end

  test "should get new" do
    get new_regionenvironment_url
    assert_response :success
  end

  test "should create regionenvironment" do
    assert_difference('Regionenvironment.count') do
      post regionenvironments_url, params: { regionenvironment: { llsd_settings: @regionenvironment.llsd_settings } }
    end

    assert_redirected_to regionenvironment_url(Regionenvironment.last)
  end

  test "should show regionenvironment" do
    get regionenvironment_url(@regionenvironment)
    assert_response :success
  end

  test "should get edit" do
    get edit_regionenvironment_url(@regionenvironment)
    assert_response :success
  end

  test "should update regionenvironment" do
    patch regionenvironment_url(@regionenvironment), params: { regionenvironment: { llsd_settings: @regionenvironment.llsd_settings } }
    assert_redirected_to regionenvironment_url(@regionenvironment)
  end

  test "should destroy regionenvironment" do
    assert_difference('Regionenvironment.count', -1) do
      delete regionenvironment_url(@regionenvironment)
    end

    assert_redirected_to regionenvironments_url
  end
end

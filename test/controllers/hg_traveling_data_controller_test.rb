require 'test_helper'

class HgTravelingDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hg_traveling_datum = hg_traveling_data(:one)
  end

  test "should get index" do
    get hg_traveling_data_url
    assert_response :success
  end

  test "should get new" do
    get new_hg_traveling_datum_url
    assert_response :success
  end

  test "should create hg_traveling_datum" do
    assert_difference('HgTravelingDatum.count') do
      post hg_traveling_data_url, params: { hg_traveling_datum: { ClientIPAddress: @hg_traveling_datum.ClientIPAddress, GridExternalName: @hg_traveling_datum.GridExternalName, MyIPAddress: @hg_traveling_datum.MyIPAddress, ServiceToken: @hg_traveling_datum.ServiceToken, TMStamp: @hg_traveling_datum.TMStamp, UserID: @hg_traveling_datum.UserID } }
    end

    assert_redirected_to hg_traveling_datum_url(HgTravelingDatum.last)
  end

  test "should show hg_traveling_datum" do
    get hg_traveling_datum_url(@hg_traveling_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_hg_traveling_datum_url(@hg_traveling_datum)
    assert_response :success
  end

  test "should update hg_traveling_datum" do
    patch hg_traveling_datum_url(@hg_traveling_datum), params: { hg_traveling_datum: { ClientIPAddress: @hg_traveling_datum.ClientIPAddress, GridExternalName: @hg_traveling_datum.GridExternalName, MyIPAddress: @hg_traveling_datum.MyIPAddress, ServiceToken: @hg_traveling_datum.ServiceToken, TMStamp: @hg_traveling_datum.TMStamp, UserID: @hg_traveling_datum.UserID } }
    assert_redirected_to hg_traveling_datum_url(@hg_traveling_datum)
  end

  test "should destroy hg_traveling_datum" do
    assert_difference('HgTravelingDatum.count', -1) do
      delete hg_traveling_datum_url(@hg_traveling_datum)
    end

    assert_redirected_to hg_traveling_data_url
  end
end

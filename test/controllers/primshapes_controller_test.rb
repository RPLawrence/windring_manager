require 'test_helper'

class PrimshapesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @primshape = primshapes(:one)
  end

  test "should get index" do
    get primshapes_url
    assert_response :success
  end

  test "should get new" do
    get new_primshape_url
    assert_response :success
  end

  test "should create primshape" do
    assert_difference('Primshape.count') do
      post primshapes_url, params: { primshape: { ExtraParams: @primshape.ExtraParams, LastAttachPoint: @primshape.LastAttachPoint, Media: @primshape.Media, PCode: @primshape.PCode, PathBegin: @primshape.PathBegin, PathCurve: @primshape.PathCurve, PathEnd: @primshape.PathEnd, PathRadiusOffset: @primshape.PathRadiusOffset, PathRevolutions: @primshape.PathRevolutions, PathScaleX: @primshape.PathScaleX, PathScaleY: @primshape.PathScaleY, PathShearX: @primshape.PathShearX, PathShearY: @primshape.PathShearY, PathSkew: @primshape.PathSkew, PathTaperX: @primshape.PathTaperX, PathTaperY: @primshape.PathTaperY, PathTwist: @primshape.PathTwist, PathTwistBegin: @primshape.PathTwistBegin, ProfileBegin: @primshape.ProfileBegin, ProfileCurve: @primshape.ProfileCurve, ProfileEnd: @primshape.ProfileEnd, ProfileHollow: @primshape.ProfileHollow, ScaleX: @primshape.ScaleX, ScaleY: @primshape.ScaleY, ScaleZ: @primshape.ScaleZ, Shape: @primshape.Shape, State: @primshape.State, Texture: @primshape.Texture } }
    end

    assert_redirected_to primshape_url(Primshape.last)
  end

  test "should show primshape" do
    get primshape_url(@primshape)
    assert_response :success
  end

  test "should get edit" do
    get edit_primshape_url(@primshape)
    assert_response :success
  end

  test "should update primshape" do
    patch primshape_url(@primshape), params: { primshape: { ExtraParams: @primshape.ExtraParams, LastAttachPoint: @primshape.LastAttachPoint, Media: @primshape.Media, PCode: @primshape.PCode, PathBegin: @primshape.PathBegin, PathCurve: @primshape.PathCurve, PathEnd: @primshape.PathEnd, PathRadiusOffset: @primshape.PathRadiusOffset, PathRevolutions: @primshape.PathRevolutions, PathScaleX: @primshape.PathScaleX, PathScaleY: @primshape.PathScaleY, PathShearX: @primshape.PathShearX, PathShearY: @primshape.PathShearY, PathSkew: @primshape.PathSkew, PathTaperX: @primshape.PathTaperX, PathTaperY: @primshape.PathTaperY, PathTwist: @primshape.PathTwist, PathTwistBegin: @primshape.PathTwistBegin, ProfileBegin: @primshape.ProfileBegin, ProfileCurve: @primshape.ProfileCurve, ProfileEnd: @primshape.ProfileEnd, ProfileHollow: @primshape.ProfileHollow, ScaleX: @primshape.ScaleX, ScaleY: @primshape.ScaleY, ScaleZ: @primshape.ScaleZ, Shape: @primshape.Shape, State: @primshape.State, Texture: @primshape.Texture } }
    assert_redirected_to primshape_url(@primshape)
  end

  test "should destroy primshape" do
    assert_difference('Primshape.count', -1) do
      delete primshape_url(@primshape)
    end

    assert_redirected_to primshapes_url
  end
end

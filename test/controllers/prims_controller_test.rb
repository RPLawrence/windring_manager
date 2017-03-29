require 'test_helper'

class PrimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prim = prims(:one)
  end

  test "should get index" do
    get prims_url
    assert_response :success
  end

  test "should get new" do
    get new_prim_url
    assert_response :success
  end

  test "should create prim" do
    assert_difference('Prim.count') do
      post prims_url, params: { prim: { AccelerationX: @prim.AccelerationX, AccelerationY: @prim.AccelerationY, AccelerationZ: @prim.AccelerationZ, AllowedDrop: @prim.AllowedDrop, AngularVelocityX: @prim.AngularVelocityX, AngularVelocityY: @prim.AngularVelocityY, AngularVelocityZ: @prim.AngularVelocityZ, AttachedPosX: @prim.AttachedPosX, AttachedPosY: @prim.AttachedPosY, AttachedPosZ: @prim.AttachedPosZ, BaseMask: @prim.BaseMask, CameraAtOffsetX: @prim.CameraAtOffsetX, CameraAtOffsetY: @prim.CameraAtOffsetY, CameraAtOffsetZ: @prim.CameraAtOffsetZ, CameraEyeOffsetX: @prim.CameraEyeOffsetX, CameraEyeOffsetY: @prim.CameraEyeOffsetY, CameraEyeOffsetZ: @prim.CameraEyeOffsetZ, ClickAction: @prim.ClickAction, CollisionSound: @prim.CollisionSound, CollisionSoundVolume: @prim.CollisionSoundVolume, ColorA: @prim.ColorA, ColorB: @prim.ColorB, ColorG: @prim.ColorG, ColorR: @prim.ColorR, CreationDate: @prim.CreationDate, CreatorID: @prim.CreatorID, Density: @prim.Density, Description: @prim.Description, DieAtEdge: @prim.DieAtEdge, DynAttrs: @prim.DynAttrs, EveryoneMask: @prim.EveryoneMask, ForceMouselook: @prim.ForceMouselook, Friction: @prim.Friction, GravityModifier: @prim.GravityModifier, GroupID: @prim.GroupID, GroupMask: @prim.GroupMask, GroupPositionX: @prim.GroupPositionX, GroupPositionY: @prim.GroupPositionY, GroupPositionZ: @prim.GroupPositionZ, KeyframeMotion: @prim.KeyframeMotion, LastOwnerID: @prim.LastOwnerID, LinkNumber: @prim.LinkNumber, LoopedSound: @prim.LoopedSound, LoopedSoundGain: @prim.LoopedSoundGain, Material: @prim.Material, MediaURL: @prim.MediaURL, Name: @prim.Name, NextOwnerMask: @prim.NextOwnerMask, ObjectFlags: @prim.ObjectFlags, OmegaX: @prim.OmegaX, OmegaY: @prim.OmegaY, OmegaZ: @prim.OmegaZ, OwnerID: @prim.OwnerID, OwnerMask: @prim.OwnerMask, ParticleSystem: @prim.ParticleSystem, PassCollisions: @prim.PassCollisions, PassTouches: @prim.PassTouches, PayButton1: @prim.PayButton1, PayButton2: @prim.PayButton2, PayButton3: @prim.PayButton3, PayButton4: @prim.PayButton4, PayPrice: @prim.PayPrice, PhysicsShapeType: @prim.PhysicsShapeType, PositionX: @prim.PositionX, PositionY: @prim.PositionY, PositionZ: @prim.PositionZ, RegionUUID: @prim.RegionUUID, Restitution: @prim.Restitution, RezzerID: @prim.RezzerID, RotationAxisLocks: @prim.RotationAxisLocks, RotationW: @prim.RotationW, RotationX: @prim.RotationX, RotationY: @prim.RotationY, RotationZ: @prim.RotationZ, SalePrice: @prim.SalePrice, SaleType: @prim.SaleType, SceneGroupID: @prim.SceneGroupID, ScriptAccessPin: @prim.ScriptAccessPin, SitName: @prim.SitName, SitTargetOffsetX: @prim.SitTargetOffsetX, SitTargetOffsetY: @prim.SitTargetOffsetY, SitTargetOffsetZ: @prim.SitTargetOffsetZ, SitTargetOrientW: @prim.SitTargetOrientW, SitTargetOrientX: @prim.SitTargetOrientX, SitTargetOrientY: @prim.SitTargetOrientY, SitTargetOrientZ: @prim.SitTargetOrientZ, Text: @prim.Text, TextureAnimation: @prim.TextureAnimation, TouchName: @prim.TouchName, Vehicle: @prim.Vehicle, VelocityX: @prim.VelocityX, VelocityY: @prim.VelocityY, VelocityZ: @prim.VelocityZ } }
    end

    assert_redirected_to prim_url(Prim.last)
  end

  test "should show prim" do
    get prim_url(@prim)
    assert_response :success
  end

  test "should get edit" do
    get edit_prim_url(@prim)
    assert_response :success
  end

  test "should update prim" do
    patch prim_url(@prim), params: { prim: { AccelerationX: @prim.AccelerationX, AccelerationY: @prim.AccelerationY, AccelerationZ: @prim.AccelerationZ, AllowedDrop: @prim.AllowedDrop, AngularVelocityX: @prim.AngularVelocityX, AngularVelocityY: @prim.AngularVelocityY, AngularVelocityZ: @prim.AngularVelocityZ, AttachedPosX: @prim.AttachedPosX, AttachedPosY: @prim.AttachedPosY, AttachedPosZ: @prim.AttachedPosZ, BaseMask: @prim.BaseMask, CameraAtOffsetX: @prim.CameraAtOffsetX, CameraAtOffsetY: @prim.CameraAtOffsetY, CameraAtOffsetZ: @prim.CameraAtOffsetZ, CameraEyeOffsetX: @prim.CameraEyeOffsetX, CameraEyeOffsetY: @prim.CameraEyeOffsetY, CameraEyeOffsetZ: @prim.CameraEyeOffsetZ, ClickAction: @prim.ClickAction, CollisionSound: @prim.CollisionSound, CollisionSoundVolume: @prim.CollisionSoundVolume, ColorA: @prim.ColorA, ColorB: @prim.ColorB, ColorG: @prim.ColorG, ColorR: @prim.ColorR, CreationDate: @prim.CreationDate, CreatorID: @prim.CreatorID, Density: @prim.Density, Description: @prim.Description, DieAtEdge: @prim.DieAtEdge, DynAttrs: @prim.DynAttrs, EveryoneMask: @prim.EveryoneMask, ForceMouselook: @prim.ForceMouselook, Friction: @prim.Friction, GravityModifier: @prim.GravityModifier, GroupID: @prim.GroupID, GroupMask: @prim.GroupMask, GroupPositionX: @prim.GroupPositionX, GroupPositionY: @prim.GroupPositionY, GroupPositionZ: @prim.GroupPositionZ, KeyframeMotion: @prim.KeyframeMotion, LastOwnerID: @prim.LastOwnerID, LinkNumber: @prim.LinkNumber, LoopedSound: @prim.LoopedSound, LoopedSoundGain: @prim.LoopedSoundGain, Material: @prim.Material, MediaURL: @prim.MediaURL, Name: @prim.Name, NextOwnerMask: @prim.NextOwnerMask, ObjectFlags: @prim.ObjectFlags, OmegaX: @prim.OmegaX, OmegaY: @prim.OmegaY, OmegaZ: @prim.OmegaZ, OwnerID: @prim.OwnerID, OwnerMask: @prim.OwnerMask, ParticleSystem: @prim.ParticleSystem, PassCollisions: @prim.PassCollisions, PassTouches: @prim.PassTouches, PayButton1: @prim.PayButton1, PayButton2: @prim.PayButton2, PayButton3: @prim.PayButton3, PayButton4: @prim.PayButton4, PayPrice: @prim.PayPrice, PhysicsShapeType: @prim.PhysicsShapeType, PositionX: @prim.PositionX, PositionY: @prim.PositionY, PositionZ: @prim.PositionZ, RegionUUID: @prim.RegionUUID, Restitution: @prim.Restitution, RezzerID: @prim.RezzerID, RotationAxisLocks: @prim.RotationAxisLocks, RotationW: @prim.RotationW, RotationX: @prim.RotationX, RotationY: @prim.RotationY, RotationZ: @prim.RotationZ, SalePrice: @prim.SalePrice, SaleType: @prim.SaleType, SceneGroupID: @prim.SceneGroupID, ScriptAccessPin: @prim.ScriptAccessPin, SitName: @prim.SitName, SitTargetOffsetX: @prim.SitTargetOffsetX, SitTargetOffsetY: @prim.SitTargetOffsetY, SitTargetOffsetZ: @prim.SitTargetOffsetZ, SitTargetOrientW: @prim.SitTargetOrientW, SitTargetOrientX: @prim.SitTargetOrientX, SitTargetOrientY: @prim.SitTargetOrientY, SitTargetOrientZ: @prim.SitTargetOrientZ, Text: @prim.Text, TextureAnimation: @prim.TextureAnimation, TouchName: @prim.TouchName, Vehicle: @prim.Vehicle, VelocityX: @prim.VelocityX, VelocityY: @prim.VelocityY, VelocityZ: @prim.VelocityZ } }
    assert_redirected_to prim_url(@prim)
  end

  test "should destroy prim" do
    assert_difference('Prim.count', -1) do
      delete prim_url(@prim)
    end

    assert_redirected_to prims_url
  end
end

class PrimsController < ApplicationController
  before_action :set_prim, only: [:show, :edit, :update, :destroy]

  # GET /prims
  # GET /prims.json
  def index
    @prims = Prim.all
  end

  # GET /prims/1
  # GET /prims/1.json
  def show
  end

  # GET /prims/new
  def new
    @prim = Prim.new
  end

  # GET /prims/1/edit
  def edit
  end

  # POST /prims
  # POST /prims.json
  def create
    @prim = Prim.new(prim_params)

    respond_to do |format|
      if @prim.save
        format.html { redirect_to @prim, notice: 'Prim was successfully created.' }
        format.json { render :show, status: :created, location: @prim }
      else
        format.html { render :new }
        format.json { render json: @prim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prims/1
  # PATCH/PUT /prims/1.json
  def update
    respond_to do |format|
      if @prim.update(prim_params)
        format.html { redirect_to @prim, notice: 'Prim was successfully updated.' }
        format.json { render :show, status: :ok, location: @prim }
      else
        format.html { render :edit }
        format.json { render json: @prim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prims/1
  # DELETE /prims/1.json
  def destroy
    @prim.destroy
    respond_to do |format|
      format.html { redirect_to prims_url, notice: 'Prim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prim
      @prim = Prim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prim_params
      params.require(:prim).permit(:CreationDate, :Name, :Text, :Description, :SitName, :TouchName, :ObjectFlags, :OwnerMask, :NextOwnerMask, :GroupMask, :EveryoneMask, :BaseMask, :PositionX, :PositionY, :PositionZ, :GroupPositionX, :GroupPositionY, :GroupPositionZ, :VelocityX, :VelocityY, :VelocityZ, :AngularVelocityX, :AngularVelocityY, :AngularVelocityZ, :AccelerationX, :AccelerationY, :AccelerationZ, :RotationX, :RotationY, :RotationZ, :RotationW, :SitTargetOffsetX, :SitTargetOffsetY, :SitTargetOffsetZ, :SitTargetOrientW, :SitTargetOrientX, :SitTargetOrientY, :SitTargetOrientZ, :RegionUUID, :CreatorID, :OwnerID, :GroupID, :LastOwnerID, :SceneGroupID, :PayPrice, :PayButton1, :PayButton2, :PayButton3, :PayButton4, :LoopedSound, :LoopedSoundGain, :TextureAnimation, :OmegaX, :OmegaY, :OmegaZ, :CameraEyeOffsetX, :CameraEyeOffsetY, :CameraEyeOffsetZ, :CameraAtOffsetX, :CameraAtOffsetY, :CameraAtOffsetZ, :ForceMouselook, :ScriptAccessPin, :AllowedDrop, :DieAtEdge, :SalePrice, :SaleType, :ColorR, :ColorG, :ColorB, :ColorA, :ParticleSystem, :ClickAction, :Material, :CollisionSound, :CollisionSoundVolume, :LinkNumber, :PassTouches, :MediaURL, :DynAttrs, :PhysicsShapeType, :Density, :GravityModifier, :Friction, :Restitution, :KeyframeMotion, :AttachedPosX, :AttachedPosY, :AttachedPosZ, :PassCollisions, :Vehicle, :RotationAxisLocks, :RezzerID)
    end
end

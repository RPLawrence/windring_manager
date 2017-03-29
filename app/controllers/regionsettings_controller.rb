class RegionsettingsController < ApplicationController
  before_action :set_regionsetting, only: [:show, :edit, :update, :destroy]

  # GET /regionsettings
  # GET /regionsettings.json
  def index
    @regionsettings = Regionsetting.all
  end

  # GET /regionsettings/1
  # GET /regionsettings/1.json
  def show
  end

  # GET /regionsettings/new
  def new
    @regionsetting = Regionsetting.new
  end

  # GET /regionsettings/1/edit
  def edit
  end

  # POST /regionsettings
  # POST /regionsettings.json
  def create
    @regionsetting = Regionsetting.new(regionsetting_params)

    respond_to do |format|
      if @regionsetting.save
        format.html { redirect_to @regionsetting, notice: 'Regionsetting was successfully created.' }
        format.json { render :show, status: :created, location: @regionsetting }
      else
        format.html { render :new }
        format.json { render json: @regionsetting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regionsettings/1
  # PATCH/PUT /regionsettings/1.json
  def update
    respond_to do |format|
      if @regionsetting.update(regionsetting_params)
        format.html { redirect_to @regionsetting, notice: 'Regionsetting was successfully updated.' }
        format.json { render :show, status: :ok, location: @regionsetting }
      else
        format.html { render :edit }
        format.json { render json: @regionsetting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regionsettings/1
  # DELETE /regionsettings/1.json
  def destroy
    @regionsetting.destroy
    respond_to do |format|
      format.html { redirect_to regionsettings_url, notice: 'Regionsetting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regionsetting
      @regionsetting = Regionsetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regionsetting_params
      params.require(:regionsetting).permit(:block_terraform, :block_fly, :allow_damage, :restrict_pushing, :allow_land_resell, :allow_land_join_divide, :block_show_in_search, :agent_limit, :object_bonus, :maturity, :disable_scripts, :disable_collisions, :disable_physics, :terrain_texture_1, :terrain_texture_2, :terrain_texture_3, :terrain_texture_4, :elevation_1_nw, :elevation_2_nw, :elevation_1_ne, :elevation_2_ne, :elevation_1_se, :elevation_2_se, :elevation_1_sw, :elevation_2_sw, :water_height, :terrain_raise_limit, :terrain_lower_limit, :use_estate_sun, :fixed_sun, :sun_position, :covenant, :Sandbox, :sunvectorx, :sunvectory, :sunvectorz, :loaded_creation_id, :loaded_creation_datetime, :map_tile_ID, :TelehubObject, :parcel_tile_ID, :covenant_datetime, :block_search, :casino)
    end
end

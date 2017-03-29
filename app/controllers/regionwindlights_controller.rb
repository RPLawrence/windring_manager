class RegionwindlightsController < ApplicationController
  before_action :set_regionwindlight, only: [:show, :edit, :update, :destroy]

  # GET /regionwindlights
  # GET /regionwindlights.json
  def index
    @regionwindlights = Regionwindlight.all
  end

  # GET /regionwindlights/1
  # GET /regionwindlights/1.json
  def show
  end

  # GET /regionwindlights/new
  def new
    @regionwindlight = Regionwindlight.new
  end

  # GET /regionwindlights/1/edit
  def edit
  end

  # POST /regionwindlights
  # POST /regionwindlights.json
  def create
    @regionwindlight = Regionwindlight.new(regionwindlight_params)

    respond_to do |format|
      if @regionwindlight.save
        format.html { redirect_to @regionwindlight, notice: 'Regionwindlight was successfully created.' }
        format.json { render :show, status: :created, location: @regionwindlight }
      else
        format.html { render :new }
        format.json { render json: @regionwindlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regionwindlights/1
  # PATCH/PUT /regionwindlights/1.json
  def update
    respond_to do |format|
      if @regionwindlight.update(regionwindlight_params)
        format.html { redirect_to @regionwindlight, notice: 'Regionwindlight was successfully updated.' }
        format.json { render :show, status: :ok, location: @regionwindlight }
      else
        format.html { render :edit }
        format.json { render json: @regionwindlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regionwindlights/1
  # DELETE /regionwindlights/1.json
  def destroy
    @regionwindlight.destroy
    respond_to do |format|
      format.html { redirect_to regionwindlights_url, notice: 'Regionwindlight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regionwindlight
      @regionwindlight = Regionwindlight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regionwindlight_params
      params.require(:regionwindlight).permit(:water_color_r, :water_color_g, :water_color_b, :water_fog_density_exponent, :underwater_fog_modifier, :reflection_wavelet_scale_1, :reflection_wavelet_scale_2, :reflection_wavelet_scale_3, :fresnel_scale, :fresnel_offset, :refract_scale_above, :refract_scale_below, :blur_multiplier, :big_wave_direction_x, :big_wave_direction_y, :little_wave_direction_x, :little_wave_direction_y, :normal_map_texture, :horizon_r, :horizon_g, :horizon_b, :horizon_i, :haze_horizon, :blue_density_r, :blue_density_g, :blue_density_b, :blue_density_i, :haze_density, :density_multiplier, :distance_multiplier, :max_altitude, :sun_moon_color_r, :sun_moon_color_g, :sun_moon_color_b, :sun_moon_color_i, :sun_moon_position, :ambient_r, :ambient_g, :ambient_b, :ambient_i, :east_angle, :sun_glow_focus, :sun_glow_size, :scene_gamma, :star_brightness, :cloud_color_r, :cloud_color_g, :cloud_color_b, :cloud_color_i, :cloud_x, :cloud_y, :cloud_density, :cloud_coverage, :cloud_scale, :cloud_detail_x, :cloud_detail_y, :cloud_detail_density, :cloud_scroll_x, :cloud_scroll_x_lock, :cloud_scroll_y, :cloud_scroll_y_lock, :draw_classic_clouds)
    end
end

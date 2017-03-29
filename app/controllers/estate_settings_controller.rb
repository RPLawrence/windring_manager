class EstateSettingsController < ApplicationController
  before_action :set_estate_setting, only: [:show, :edit, :update, :destroy]

  # GET /estate_settings
  # GET /estate_settings.json
  def index
    @estate_settings = EstateSetting.all
  end

  # GET /estate_settings/1
  # GET /estate_settings/1.json
  def show
  end

  # GET /estate_settings/new
  def new
    @estate_setting = EstateSetting.new
  end

  # GET /estate_settings/1/edit
  def edit
  end

  # POST /estate_settings
  # POST /estate_settings.json
  def create
    @estate_setting = EstateSetting.new(estate_setting_params)

    respond_to do |format|
      if @estate_setting.save
        format.html { redirect_to @estate_setting, notice: 'Estate setting was successfully created.' }
        format.json { render :show, status: :created, location: @estate_setting }
      else
        format.html { render :new }
        format.json { render json: @estate_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estate_settings/1
  # PATCH/PUT /estate_settings/1.json
  def update
    respond_to do |format|
      if @estate_setting.update(estate_setting_params)
        format.html { redirect_to @estate_setting, notice: 'Estate setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @estate_setting }
      else
        format.html { render :edit }
        format.json { render json: @estate_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estate_settings/1
  # DELETE /estate_settings/1.json
  def destroy
    @estate_setting.destroy
    respond_to do |format|
      format.html { redirect_to estate_settings_url, notice: 'Estate setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estate_setting
      @estate_setting = EstateSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estate_setting_params
      params.require(:estate_setting).permit(:EstateName, :AbuseEmailToEstateOwner, :DenyAnonymous, :ResetHomeOnTeleport, :FixedSun, :DenyTransacted, :BlockDwell, :DenyIdentified, :AllowVoice, :UseGlobalTime, :PricePerMeter, :TaxFree, :AllowDirectTeleport, :RedirectGridX, :RedirectGridY, :ParentEstateID, :SunPosition, :EstateSkipScripts, :BillableFactor, :PublicAccess, :AbuseEmail, :EstateOwner, :DenyMinors, :AllowLandmark, :AllowParcelChanges, :AllowSetHome)
    end
end

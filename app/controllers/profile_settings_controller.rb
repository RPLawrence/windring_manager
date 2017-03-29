class ProfileSettingsController < ApplicationController
  before_action :set_profile_setting, only: [:show, :edit, :update, :destroy]

  # GET /profile_settings
  # GET /profile_settings.json
  def index
    @profile_settings = ProfileSetting.all
  end

  # GET /profile_settings/1
  # GET /profile_settings/1.json
  def show
  end

  # GET /profile_settings/new
  def new
    @profile_setting = ProfileSetting.new
  end

  # GET /profile_settings/1/edit
  def edit
  end

  # POST /profile_settings
  # POST /profile_settings.json
  def create
    @profile_setting = ProfileSetting.new(profile_setting_params)

    respond_to do |format|
      if @profile_setting.save
        format.html { redirect_to @profile_setting, notice: 'Profile setting was successfully created.' }
        format.json { render :show, status: :created, location: @profile_setting }
      else
        format.html { render :new }
        format.json { render json: @profile_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_settings/1
  # PATCH/PUT /profile_settings/1.json
  def update
    respond_to do |format|
      if @profile_setting.update(profile_setting_params)
        format.html { redirect_to @profile_setting, notice: 'Profile setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_setting }
      else
        format.html { render :edit }
        format.json { render json: @profile_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_settings/1
  # DELETE /profile_settings/1.json
  def destroy
    @profile_setting.destroy
    respond_to do |format|
      format.html { redirect_to profile_settings_url, notice: 'Profile setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_setting
      @profile_setting = ProfileSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_setting_params
      params.require(:profile_setting).permit(:imviaemail, :visible, :email)
    end
end

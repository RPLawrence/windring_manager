class UsersettingsController < ApplicationController
  before_action :set_usersetting, only: [:show, :edit, :update, :destroy]

  # GET /usersettings
  # GET /usersettings.json
  def index
    @usersettings = Usersetting.all
  end

  # GET /usersettings/1
  # GET /usersettings/1.json
  def show
  end

  # GET /usersettings/new
  def new
    @usersetting = Usersetting.new
  end

  # GET /usersettings/1/edit
  def edit
  end

  # POST /usersettings
  # POST /usersettings.json
  def create
    @usersetting = Usersetting.new(usersetting_params)

    respond_to do |format|
      if @usersetting.save
        format.html { redirect_to @usersetting, notice: 'Usersetting was successfully created.' }
        format.json { render :show, status: :created, location: @usersetting }
      else
        format.html { render :new }
        format.json { render json: @usersetting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usersettings/1
  # PATCH/PUT /usersettings/1.json
  def update
    respond_to do |format|
      if @usersetting.update(usersetting_params)
        format.html { redirect_to @usersetting, notice: 'Usersetting was successfully updated.' }
        format.json { render :show, status: :ok, location: @usersetting }
      else
        format.html { render :edit }
        format.json { render json: @usersetting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usersettings/1
  # DELETE /usersettings/1.json
  def destroy
    @usersetting.destroy
    respond_to do |format|
      format.html { redirect_to usersettings_url, notice: 'Usersetting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usersetting
      @usersetting = Usersetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usersetting_params
      params.require(:usersetting).permit(:imviaemail, :visible, :email)
    end
end

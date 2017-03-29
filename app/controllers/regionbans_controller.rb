class RegionbansController < ApplicationController
  before_action :set_regionban, only: [:show, :edit, :update, :destroy]

  # GET /regionbans
  # GET /regionbans.json
  def index
    @regionbans = Regionban.all
  end

  # GET /regionbans/1
  # GET /regionbans/1.json
  def show
  end

  # GET /regionbans/new
  def new
    @regionban = Regionban.new
  end

  # GET /regionbans/1/edit
  def edit
  end

  # POST /regionbans
  # POST /regionbans.json
  def create
    @regionban = Regionban.new(regionban_params)

    respond_to do |format|
      if @regionban.save
        format.html { redirect_to @regionban, notice: 'Regionban was successfully created.' }
        format.json { render :show, status: :created, location: @regionban }
      else
        format.html { render :new }
        format.json { render json: @regionban.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regionbans/1
  # PATCH/PUT /regionbans/1.json
  def update
    respond_to do |format|
      if @regionban.update(regionban_params)
        format.html { redirect_to @regionban, notice: 'Regionban was successfully updated.' }
        format.json { render :show, status: :ok, location: @regionban }
      else
        format.html { render :edit }
        format.json { render json: @regionban.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regionbans/1
  # DELETE /regionbans/1.json
  def destroy
    @regionban.destroy
    respond_to do |format|
      format.html { redirect_to regionbans_url, notice: 'Regionban was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regionban
      @regionban = Regionban.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regionban_params
      params.require(:regionban).permit(:regionUUID, :bannedUUID, :bannedIp, :bannedIpHostMask)
    end
end

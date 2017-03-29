class EstateMapsController < ApplicationController
  before_action :set_estate_map, only: [:show, :edit, :update, :destroy]

  # GET /estate_maps
  # GET /estate_maps.json
  def index
    @estate_maps = EstateMap.all
  end

  # GET /estate_maps/1
  # GET /estate_maps/1.json
  def show
  end

  # GET /estate_maps/new
  def new
    @estate_map = EstateMap.new
  end

  # GET /estate_maps/1/edit
  def edit
  end

  # POST /estate_maps
  # POST /estate_maps.json
  def create
    @estate_map = EstateMap.new(estate_map_params)

    respond_to do |format|
      if @estate_map.save
        format.html { redirect_to @estate_map, notice: 'Estate map was successfully created.' }
        format.json { render :show, status: :created, location: @estate_map }
      else
        format.html { render :new }
        format.json { render json: @estate_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estate_maps/1
  # PATCH/PUT /estate_maps/1.json
  def update
    respond_to do |format|
      if @estate_map.update(estate_map_params)
        format.html { redirect_to @estate_map, notice: 'Estate map was successfully updated.' }
        format.json { render :show, status: :ok, location: @estate_map }
      else
        format.html { render :edit }
        format.json { render json: @estate_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estate_maps/1
  # DELETE /estate_maps/1.json
  def destroy
    @estate_map.destroy
    respond_to do |format|
      format.html { redirect_to estate_maps_url, notice: 'Estate map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estate_map
      @estate_map = EstateMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estate_map_params
      params.require(:estate_map).permit(:EstateID)
    end
end

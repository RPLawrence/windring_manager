class SpawnPointsController < ApplicationController
  before_action :set_spawn_point, only: [:show, :edit, :update, :destroy]

  # GET /spawn_points
  # GET /spawn_points.json
  def index
    @spawn_points = SpawnPoint.all
  end

  # GET /spawn_points/1
  # GET /spawn_points/1.json
  def show
  end

  # GET /spawn_points/new
  def new
    @spawn_point = SpawnPoint.new
  end

  # GET /spawn_points/1/edit
  def edit
  end

  # POST /spawn_points
  # POST /spawn_points.json
  def create
    @spawn_point = SpawnPoint.new(spawn_point_params)

    respond_to do |format|
      if @spawn_point.save
        format.html { redirect_to @spawn_point, notice: 'Spawn point was successfully created.' }
        format.json { render :show, status: :created, location: @spawn_point }
      else
        format.html { render :new }
        format.json { render json: @spawn_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spawn_points/1
  # PATCH/PUT /spawn_points/1.json
  def update
    respond_to do |format|
      if @spawn_point.update(spawn_point_params)
        format.html { redirect_to @spawn_point, notice: 'Spawn point was successfully updated.' }
        format.json { render :show, status: :ok, location: @spawn_point }
      else
        format.html { render :edit }
        format.json { render json: @spawn_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spawn_points/1
  # DELETE /spawn_points/1.json
  def destroy
    @spawn_point.destroy
    respond_to do |format|
      format.html { redirect_to spawn_points_url, notice: 'Spawn point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spawn_point
      @spawn_point = SpawnPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spawn_point_params
      params.require(:spawn_point).permit(:RegionID, :Yaw, :Pitch, :Distance)
    end
end

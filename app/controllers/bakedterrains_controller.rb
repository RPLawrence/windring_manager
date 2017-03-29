class BakedterrainsController < ApplicationController
  before_action :set_bakedterrain, only: [:show, :edit, :update, :destroy]

  # GET /bakedterrains
  # GET /bakedterrains.json
  def index
    @bakedterrains = Bakedterrain.all
  end

  # GET /bakedterrains/1
  # GET /bakedterrains/1.json
  def show
  end

  # GET /bakedterrains/new
  def new
    @bakedterrain = Bakedterrain.new
  end

  # GET /bakedterrains/1/edit
  def edit
  end

  # POST /bakedterrains
  # POST /bakedterrains.json
  def create
    @bakedterrain = Bakedterrain.new(bakedterrain_params)

    respond_to do |format|
      if @bakedterrain.save
        format.html { redirect_to @bakedterrain, notice: 'Bakedterrain was successfully created.' }
        format.json { render :show, status: :created, location: @bakedterrain }
      else
        format.html { render :new }
        format.json { render json: @bakedterrain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bakedterrains/1
  # PATCH/PUT /bakedterrains/1.json
  def update
    respond_to do |format|
      if @bakedterrain.update(bakedterrain_params)
        format.html { redirect_to @bakedterrain, notice: 'Bakedterrain was successfully updated.' }
        format.json { render :show, status: :ok, location: @bakedterrain }
      else
        format.html { render :edit }
        format.json { render json: @bakedterrain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bakedterrains/1
  # DELETE /bakedterrains/1.json
  def destroy
    @bakedterrain.destroy
    respond_to do |format|
      format.html { redirect_to bakedterrains_url, notice: 'Bakedterrain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bakedterrain
      @bakedterrain = Bakedterrain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bakedterrain_params
      params.require(:bakedterrain).permit(:RegionUUID, :Revision, :Heightfield)
    end
end

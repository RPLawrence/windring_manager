class LandaccesslistsController < ApplicationController
  before_action :set_landaccesslist, only: [:show, :edit, :update, :destroy]

  # GET /landaccesslists
  # GET /landaccesslists.json
  def index
    @landaccesslists = Landaccesslist.all
  end

  # GET /landaccesslists/1
  # GET /landaccesslists/1.json
  def show
  end

  # GET /landaccesslists/new
  def new
    @landaccesslist = Landaccesslist.new
  end

  # GET /landaccesslists/1/edit
  def edit
  end

  # POST /landaccesslists
  # POST /landaccesslists.json
  def create
    @landaccesslist = Landaccesslist.new(landaccesslist_params)

    respond_to do |format|
      if @landaccesslist.save
        format.html { redirect_to @landaccesslist, notice: 'Landaccesslist was successfully created.' }
        format.json { render :show, status: :created, location: @landaccesslist }
      else
        format.html { render :new }
        format.json { render json: @landaccesslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landaccesslists/1
  # PATCH/PUT /landaccesslists/1.json
  def update
    respond_to do |format|
      if @landaccesslist.update(landaccesslist_params)
        format.html { redirect_to @landaccesslist, notice: 'Landaccesslist was successfully updated.' }
        format.json { render :show, status: :ok, location: @landaccesslist }
      else
        format.html { render :edit }
        format.json { render json: @landaccesslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landaccesslists/1
  # DELETE /landaccesslists/1.json
  def destroy
    @landaccesslist.destroy
    respond_to do |format|
      format.html { redirect_to landaccesslists_url, notice: 'Landaccesslist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landaccesslist
      @landaccesslist = Landaccesslist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landaccesslist_params
      params.require(:landaccesslist).permit(:LandUUID, :AccessUUID, :Flags, :Expires)
    end
end

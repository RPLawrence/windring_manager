class InventoryfoldersController < ApplicationController
  before_action :set_inventoryfolder, only: [:show, :edit, :update, :destroy]

  # GET /inventoryfolders
  # GET /inventoryfolders.json
  def index
    @inventoryfolders = Inventoryfolder.all
  end

  # GET /inventoryfolders/1
  # GET /inventoryfolders/1.json
  def show
  end

  # GET /inventoryfolders/new
  def new
    @inventoryfolder = Inventoryfolder.new
  end

  # GET /inventoryfolders/1/edit
  def edit
  end

  # POST /inventoryfolders
  # POST /inventoryfolders.json
  def create
    @inventoryfolder = Inventoryfolder.new(inventoryfolder_params)

    respond_to do |format|
      if @inventoryfolder.save
        format.html { redirect_to @inventoryfolder, notice: 'Inventoryfolder was successfully created.' }
        format.json { render :show, status: :created, location: @inventoryfolder }
      else
        format.html { render :new }
        format.json { render json: @inventoryfolder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventoryfolders/1
  # PATCH/PUT /inventoryfolders/1.json
  def update
    respond_to do |format|
      if @inventoryfolder.update(inventoryfolder_params)
        format.html { redirect_to @inventoryfolder, notice: 'Inventoryfolder was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventoryfolder }
      else
        format.html { render :edit }
        format.json { render json: @inventoryfolder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventoryfolders/1
  # DELETE /inventoryfolders/1.json
  def destroy
    @inventoryfolder.destroy
    respond_to do |format|
      format.html { redirect_to inventoryfolders_url, notice: 'Inventoryfolder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventoryfolder
      @inventoryfolder = Inventoryfolder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventoryfolder_params
      params.require(:inventoryfolder).permit(:folderName, :type, :version, :agentID, :parentFolderID)
    end
end

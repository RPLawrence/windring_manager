class PrimitemsController < ApplicationController
  before_action :set_primitem, only: [:show, :edit, :update, :destroy]

  # GET /primitems
  # GET /primitems.json
  def index
    @primitems = Primitem.all
  end

  # GET /primitems/1
  # GET /primitems/1.json
  def show
  end

  # GET /primitems/new
  def new
    @primitem = Primitem.new
  end

  # GET /primitems/1/edit
  def edit
  end

  # POST /primitems
  # POST /primitems.json
  def create
    @primitem = Primitem.new(primitem_params)

    respond_to do |format|
      if @primitem.save
        format.html { redirect_to @primitem, notice: 'Primitem was successfully created.' }
        format.json { render :show, status: :created, location: @primitem }
      else
        format.html { render :new }
        format.json { render json: @primitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /primitems/1
  # PATCH/PUT /primitems/1.json
  def update
    respond_to do |format|
      if @primitem.update(primitem_params)
        format.html { redirect_to @primitem, notice: 'Primitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @primitem }
      else
        format.html { render :edit }
        format.json { render json: @primitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primitems/1
  # DELETE /primitems/1.json
  def destroy
    @primitem.destroy
    respond_to do |format|
      format.html { redirect_to primitems_url, notice: 'Primitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_primitem
      @primitem = Primitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def primitem_params
      params.require(:primitem).permit(:invType, :assetType, :name, :description, :creationDate, :nextPermissions, :currentPermissions, :basePermissions, :everyonePermissions, :groupPermissions, :flags, :primID, :assetID, :parentFolderID, :CreatorID, :ownerID, :groupID, :lastOwnerID)
    end
end

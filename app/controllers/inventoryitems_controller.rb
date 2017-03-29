class InventoryitemsController < ApplicationController
  before_action :set_inventoryitem, only: [:show, :edit, :update, :destroy]

  # GET /inventoryitems
  # GET /inventoryitems.json
  def index
    @inventoryitems = Inventoryitem.all
  end

  # GET /inventoryitems/1
  # GET /inventoryitems/1.json
  def show
  end

  # GET /inventoryitems/new
  def new
    @inventoryitem = Inventoryitem.new
  end

  # GET /inventoryitems/1/edit
  def edit
  end

  # POST /inventoryitems
  # POST /inventoryitems.json
  def create
    @inventoryitem = Inventoryitem.new(inventoryitem_params)

    respond_to do |format|
      if @inventoryitem.save
        format.html { redirect_to @inventoryitem, notice: 'Inventoryitem was successfully created.' }
        format.json { render :show, status: :created, location: @inventoryitem }
      else
        format.html { render :new }
        format.json { render json: @inventoryitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventoryitems/1
  # PATCH/PUT /inventoryitems/1.json
  def update
    respond_to do |format|
      if @inventoryitem.update(inventoryitem_params)
        format.html { redirect_to @inventoryitem, notice: 'Inventoryitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventoryitem }
      else
        format.html { render :edit }
        format.json { render json: @inventoryitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventoryitems/1
  # DELETE /inventoryitems/1.json
  def destroy
    @inventoryitem.destroy
    respond_to do |format|
      format.html { redirect_to inventoryitems_url, notice: 'Inventoryitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventoryitem
      @inventoryitem = Inventoryitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventoryitem_params
      params.require(:inventoryitem).permit(:assetID, :assetType, :inventoryName, :inventoryDescription, :inventoryNextPermissions, :inventoryCurrentPermissions, :invType, :creatorID, :inventoryBasePermissions, :inventoryEveryOnePermissions, :salePrice, :saleType, :creationDate, :groupID, :groupOwned, :flags, :inventoryGroupPermissions, :avatarID, :parentFolderID)
    end
end

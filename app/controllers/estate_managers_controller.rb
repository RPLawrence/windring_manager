class EstateManagersController < ApplicationController
  before_action :set_estate_manager, only: [:show, :edit, :update, :destroy]

  # GET /estate_managers
  # GET /estate_managers.json
  def index
    @estate_managers = EstateManager.all
  end

  # GET /estate_managers/1
  # GET /estate_managers/1.json
  def show
  end

  # GET /estate_managers/new
  def new
    @estate_manager = EstateManager.new
  end

  # GET /estate_managers/1/edit
  def edit
  end

  # POST /estate_managers
  # POST /estate_managers.json
  def create
    @estate_manager = EstateManager.new(estate_manager_params)

    respond_to do |format|
      if @estate_manager.save
        format.html { redirect_to @estate_manager, notice: 'Estate manager was successfully created.' }
        format.json { render :show, status: :created, location: @estate_manager }
      else
        format.html { render :new }
        format.json { render json: @estate_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estate_managers/1
  # PATCH/PUT /estate_managers/1.json
  def update
    respond_to do |format|
      if @estate_manager.update(estate_manager_params)
        format.html { redirect_to @estate_manager, notice: 'Estate manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @estate_manager }
      else
        format.html { render :edit }
        format.json { render json: @estate_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estate_managers/1
  # DELETE /estate_managers/1.json
  def destroy
    @estate_manager.destroy
    respond_to do |format|
      format.html { redirect_to estate_managers_url, notice: 'Estate manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estate_manager
      @estate_manager = EstateManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estate_manager_params
      params.require(:estate_manager).permit(:EstateID, :uuid)
    end
end

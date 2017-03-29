class EstateGroupsController < ApplicationController
  before_action :set_estate_group, only: [:show, :edit, :update, :destroy]

  # GET /estate_groups
  # GET /estate_groups.json
  def index
    @estate_groups = EstateGroup.all
  end

  # GET /estate_groups/1
  # GET /estate_groups/1.json
  def show
  end

  # GET /estate_groups/new
  def new
    @estate_group = EstateGroup.new
  end

  # GET /estate_groups/1/edit
  def edit
  end

  # POST /estate_groups
  # POST /estate_groups.json
  def create
    @estate_group = EstateGroup.new(estate_group_params)

    respond_to do |format|
      if @estate_group.save
        format.html { redirect_to @estate_group, notice: 'Estate group was successfully created.' }
        format.json { render :show, status: :created, location: @estate_group }
      else
        format.html { render :new }
        format.json { render json: @estate_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estate_groups/1
  # PATCH/PUT /estate_groups/1.json
  def update
    respond_to do |format|
      if @estate_group.update(estate_group_params)
        format.html { redirect_to @estate_group, notice: 'Estate group was successfully updated.' }
        format.json { render :show, status: :ok, location: @estate_group }
      else
        format.html { render :edit }
        format.json { render json: @estate_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estate_groups/1
  # DELETE /estate_groups/1.json
  def destroy
    @estate_group.destroy
    respond_to do |format|
      format.html { redirect_to estate_groups_url, notice: 'Estate group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estate_group
      @estate_group = EstateGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estate_group_params
      params.require(:estate_group).permit(:EstateID, :uuid)
    end
end

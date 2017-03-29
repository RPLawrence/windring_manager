class OsGroupsRolemembershipsController < ApplicationController
  before_action :set_os_groups_rolemembership, only: [:show, :edit, :update, :destroy]

  # GET /os_groups_rolememberships
  # GET /os_groups_rolememberships.json
  def index
    @os_groups_rolememberships = OsGroupsRolemembership.all
  end

  # GET /os_groups_rolememberships/1
  # GET /os_groups_rolememberships/1.json
  def show
  end

  # GET /os_groups_rolememberships/new
  def new
    @os_groups_rolemembership = OsGroupsRolemembership.new
  end

  # GET /os_groups_rolememberships/1/edit
  def edit
  end

  # POST /os_groups_rolememberships
  # POST /os_groups_rolememberships.json
  def create
    @os_groups_rolemembership = OsGroupsRolemembership.new(os_groups_rolemembership_params)

    respond_to do |format|
      if @os_groups_rolemembership.save
        format.html { redirect_to @os_groups_rolemembership, notice: 'Os groups rolemembership was successfully created.' }
        format.json { render :show, status: :created, location: @os_groups_rolemembership }
      else
        format.html { render :new }
        format.json { render json: @os_groups_rolemembership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os_groups_rolememberships/1
  # PATCH/PUT /os_groups_rolememberships/1.json
  def update
    respond_to do |format|
      if @os_groups_rolemembership.update(os_groups_rolemembership_params)
        format.html { redirect_to @os_groups_rolemembership, notice: 'Os groups rolemembership was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_groups_rolemembership }
      else
        format.html { render :edit }
        format.json { render json: @os_groups_rolemembership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os_groups_rolememberships/1
  # DELETE /os_groups_rolememberships/1.json
  def destroy
    @os_groups_rolemembership.destroy
    respond_to do |format|
      format.html { redirect_to os_groups_rolememberships_url, notice: 'Os groups rolemembership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_groups_rolemembership
      @os_groups_rolemembership = OsGroupsRolemembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_groups_rolemembership_params
      params.require(:os_groups_rolemembership).permit(:GroupID, :RoleID, :PrincipalID)
    end
end

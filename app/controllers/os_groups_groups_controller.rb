class OsGroupsGroupsController < ApplicationController
  before_action :set_os_groups_group, only: [:show, :edit, :update, :destroy]

  # GET /os_groups_groups
  # GET /os_groups_groups.json
  def index
    @os_groups_groups = OsGroupsGroup.all
  end

  # GET /os_groups_groups/1
  # GET /os_groups_groups/1.json
  def show
  end

  # GET /os_groups_groups/new
  def new
    @os_groups_group = OsGroupsGroup.new
  end

  # GET /os_groups_groups/1/edit
  def edit
  end

  # POST /os_groups_groups
  # POST /os_groups_groups.json
  def create
    @os_groups_group = OsGroupsGroup.new(os_groups_group_params)

    respond_to do |format|
      if @os_groups_group.save
        format.html { redirect_to @os_groups_group, notice: 'Os groups group was successfully created.' }
        format.json { render :show, status: :created, location: @os_groups_group }
      else
        format.html { render :new }
        format.json { render json: @os_groups_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os_groups_groups/1
  # PATCH/PUT /os_groups_groups/1.json
  def update
    respond_to do |format|
      if @os_groups_group.update(os_groups_group_params)
        format.html { redirect_to @os_groups_group, notice: 'Os groups group was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_groups_group }
      else
        format.html { render :edit }
        format.json { render json: @os_groups_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os_groups_groups/1
  # DELETE /os_groups_groups/1.json
  def destroy
    @os_groups_group.destroy
    respond_to do |format|
      format.html { redirect_to os_groups_groups_url, notice: 'Os groups group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_groups_group
      @os_groups_group = OsGroupsGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_groups_group_params
      params.require(:os_groups_group).permit(:Location, :Name, :Charter, :InsigniaID, :FounderID, :MembershipFee, :OpenEnrollment, :ShowInList, :AllowPublish, :MaturePublish, :OwnerRoleID)
    end
end

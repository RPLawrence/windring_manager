class OsGroupsMembershipsController < ApplicationController
  before_action :set_os_groups_membership, only: [:show, :edit, :update, :destroy]

  # GET /os_groups_memberships
  # GET /os_groups_memberships.json
  def index
    @os_groups_memberships = OsGroupsMembership.all
  end

  # GET /os_groups_memberships/1
  # GET /os_groups_memberships/1.json
  def show
  end

  # GET /os_groups_memberships/new
  def new
    @os_groups_membership = OsGroupsMembership.new
  end

  # GET /os_groups_memberships/1/edit
  def edit
  end

  # POST /os_groups_memberships
  # POST /os_groups_memberships.json
  def create
    @os_groups_membership = OsGroupsMembership.new(os_groups_membership_params)

    respond_to do |format|
      if @os_groups_membership.save
        format.html { redirect_to @os_groups_membership, notice: 'Os groups membership was successfully created.' }
        format.json { render :show, status: :created, location: @os_groups_membership }
      else
        format.html { render :new }
        format.json { render json: @os_groups_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os_groups_memberships/1
  # PATCH/PUT /os_groups_memberships/1.json
  def update
    respond_to do |format|
      if @os_groups_membership.update(os_groups_membership_params)
        format.html { redirect_to @os_groups_membership, notice: 'Os groups membership was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_groups_membership }
      else
        format.html { render :edit }
        format.json { render json: @os_groups_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os_groups_memberships/1
  # DELETE /os_groups_memberships/1.json
  def destroy
    @os_groups_membership.destroy
    respond_to do |format|
      format.html { redirect_to os_groups_memberships_url, notice: 'Os groups membership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_groups_membership
      @os_groups_membership = OsGroupsMembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_groups_membership_params
      params.require(:os_groups_membership).permit(:GroupID, :PrincipalID, :SelectedRoleID, :Contribution, :ListInProfile, :AcceptNotices, :AccessToken)
    end
end

class OsGroupsInvitesController < ApplicationController
  before_action :set_os_groups_invite, only: [:show, :edit, :update, :destroy]

  # GET /os_groups_invites
  # GET /os_groups_invites.json
  def index
    @os_groups_invites = OsGroupsInvite.all
  end

  # GET /os_groups_invites/1
  # GET /os_groups_invites/1.json
  def show
  end

  # GET /os_groups_invites/new
  def new
    @os_groups_invite = OsGroupsInvite.new
  end

  # GET /os_groups_invites/1/edit
  def edit
  end

  # POST /os_groups_invites
  # POST /os_groups_invites.json
  def create
    @os_groups_invite = OsGroupsInvite.new(os_groups_invite_params)

    respond_to do |format|
      if @os_groups_invite.save
        format.html { redirect_to @os_groups_invite, notice: 'Os groups invite was successfully created.' }
        format.json { render :show, status: :created, location: @os_groups_invite }
      else
        format.html { render :new }
        format.json { render json: @os_groups_invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os_groups_invites/1
  # PATCH/PUT /os_groups_invites/1.json
  def update
    respond_to do |format|
      if @os_groups_invite.update(os_groups_invite_params)
        format.html { redirect_to @os_groups_invite, notice: 'Os groups invite was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_groups_invite }
      else
        format.html { render :edit }
        format.json { render json: @os_groups_invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os_groups_invites/1
  # DELETE /os_groups_invites/1.json
  def destroy
    @os_groups_invite.destroy
    respond_to do |format|
      format.html { redirect_to os_groups_invites_url, notice: 'Os groups invite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_groups_invite
      @os_groups_invite = OsGroupsInvite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_groups_invite_params
      params.require(:os_groups_invite).permit(:GroupID, :RoleID, :PrincipalID, :TMStamp)
    end
end

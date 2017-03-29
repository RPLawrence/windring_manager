class OsGroupsRolesController < ApplicationController
  before_action :set_os_groups_role, only: [:show, :edit, :update, :destroy]

  # GET /os_groups_roles
  # GET /os_groups_roles.json
  def index
    @os_groups_roles = OsGroupsRole.all
  end

  # GET /os_groups_roles/1
  # GET /os_groups_roles/1.json
  def show
  end

  # GET /os_groups_roles/new
  def new
    @os_groups_role = OsGroupsRole.new
  end

  # GET /os_groups_roles/1/edit
  def edit
  end

  # POST /os_groups_roles
  # POST /os_groups_roles.json
  def create
    @os_groups_role = OsGroupsRole.new(os_groups_role_params)

    respond_to do |format|
      if @os_groups_role.save
        format.html { redirect_to @os_groups_role, notice: 'Os groups role was successfully created.' }
        format.json { render :show, status: :created, location: @os_groups_role }
      else
        format.html { render :new }
        format.json { render json: @os_groups_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os_groups_roles/1
  # PATCH/PUT /os_groups_roles/1.json
  def update
    respond_to do |format|
      if @os_groups_role.update(os_groups_role_params)
        format.html { redirect_to @os_groups_role, notice: 'Os groups role was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_groups_role }
      else
        format.html { render :edit }
        format.json { render json: @os_groups_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os_groups_roles/1
  # DELETE /os_groups_roles/1.json
  def destroy
    @os_groups_role.destroy
    respond_to do |format|
      format.html { redirect_to os_groups_roles_url, notice: 'Os groups role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_groups_role
      @os_groups_role = OsGroupsRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_groups_role_params
      params.require(:os_groups_role).permit(:GroupID, :RoleID, :Name, :Description, :Title, :Powers)
    end
end

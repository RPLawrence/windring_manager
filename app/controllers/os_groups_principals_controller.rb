class OsGroupsPrincipalsController < ApplicationController
  before_action :set_os_groups_principal, only: [:show, :edit, :update, :destroy]

  # GET /os_groups_principals
  # GET /os_groups_principals.json
  def index
    @os_groups_principals = OsGroupsPrincipal.all
  end

  # GET /os_groups_principals/1
  # GET /os_groups_principals/1.json
  def show
  end

  # GET /os_groups_principals/new
  def new
    @os_groups_principal = OsGroupsPrincipal.new
  end

  # GET /os_groups_principals/1/edit
  def edit
  end

  # POST /os_groups_principals
  # POST /os_groups_principals.json
  def create
    @os_groups_principal = OsGroupsPrincipal.new(os_groups_principal_params)

    respond_to do |format|
      if @os_groups_principal.save
        format.html { redirect_to @os_groups_principal, notice: 'Os groups principal was successfully created.' }
        format.json { render :show, status: :created, location: @os_groups_principal }
      else
        format.html { render :new }
        format.json { render json: @os_groups_principal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os_groups_principals/1
  # PATCH/PUT /os_groups_principals/1.json
  def update
    respond_to do |format|
      if @os_groups_principal.update(os_groups_principal_params)
        format.html { redirect_to @os_groups_principal, notice: 'Os groups principal was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_groups_principal }
      else
        format.html { render :edit }
        format.json { render json: @os_groups_principal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os_groups_principals/1
  # DELETE /os_groups_principals/1.json
  def destroy
    @os_groups_principal.destroy
    respond_to do |format|
      format.html { redirect_to os_groups_principals_url, notice: 'Os groups principal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_groups_principal
      @os_groups_principal = OsGroupsPrincipal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_groups_principal_params
      params.require(:os_groups_principal).permit(:ActiveGroupID)
    end
end

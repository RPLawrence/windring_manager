class GridUsersController < ApplicationController
  before_action :set_grid_user, only: [:show, :edit, :update, :destroy]

  # GET /grid_users
  # GET /grid_users.json
  def index
    @grid_users = GridUser.all
  end

  # GET /grid_users/1
  # GET /grid_users/1.json
  def show
  end

  # GET /grid_users/new
  def new
    @grid_user = GridUser.new
  end

  # GET /grid_users/1/edit
  def edit
  end

  # POST /grid_users
  # POST /grid_users.json
  def create
    @grid_user = GridUser.new(grid_user_params)

    respond_to do |format|
      if @grid_user.save
        format.html { redirect_to @grid_user, notice: 'Grid user was successfully created.' }
        format.json { render :show, status: :created, location: @grid_user }
      else
        format.html { render :new }
        format.json { render json: @grid_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grid_users/1
  # PATCH/PUT /grid_users/1.json
  def update
    respond_to do |format|
      if @grid_user.update(grid_user_params)
        format.html { redirect_to @grid_user, notice: 'Grid user was successfully updated.' }
        format.json { render :show, status: :ok, location: @grid_user }
      else
        format.html { render :edit }
        format.json { render json: @grid_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grid_users/1
  # DELETE /grid_users/1.json
  def destroy
    @grid_user.destroy
    respond_to do |format|
      format.html { redirect_to grid_users_url, notice: 'Grid user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grid_user
      @grid_user = GridUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grid_user_params
      params.require(:grid_user).permit(:HomeRegionID, :HomePosition, :HomeLookAt, :LastRegionID, :LastPosition, :LastLookAt, :Online, :Login, :Logout)
    end
end
